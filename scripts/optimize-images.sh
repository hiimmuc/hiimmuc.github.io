#!/bin/bash

# Image Optimization Script
# Converts PNG and JPEG images to WebP format with fallback support
# Usage: ./optimize-images.sh

set -e

IMAGES_DIR="images"
REPORT_FILE="image-optimization-report.md"

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Initialize counters
total_original=0
total_webp=0
files_converted=0
failed_conversions=0

# Check if cwebp is installed
if ! command -v cwebp &> /dev/null; then
    echo -e "${RED}Error: cwebp is not installed${NC}"
    echo "Install it with: sudo apt-get install webp"
    exit 1
fi

# Check if images directory exists
if [ ! -d "$IMAGES_DIR" ]; then
    echo -e "${RED}Error: $IMAGES_DIR directory not found${NC}"
    exit 1
fi

echo -e "${BLUE}Starting image optimization process...${NC}"
echo ""

# Create report header
cat > "$REPORT_FILE" << EOF
# Image Optimization Report
Generated: $(date)

## Summary
EOF

# Function to convert image to WebP
convert_to_webp() {
    local input_file="$1"
    local output_file="${input_file%.*}.webp"
    
    if [ -f "$output_file" ]; then
        echo -e "${YELLOW}  WebP already exists: $(basename "$output_file")${NC}"
        return 0
    fi
    
    # Get original size
    local original_size=$(stat -f%z "$input_file" 2>/dev/null || stat -c%s "$input_file" 2>/dev/null)
    
    # Convert to WebP with quality 80 (good balance between quality and size)
    if cwebp -q 80 "$input_file" -o "$output_file" 2>/dev/null; then
        local webp_size=$(stat -f%z "$output_file" 2>/dev/null || stat -c%s "$output_file" 2>/dev/null)
        local reduction=$(( (original_size - webp_size) * 100 / original_size ))
        
        total_original=$((total_original + original_size))
        total_webp=$((total_webp + webp_size))
        files_converted=$((files_converted + 1))
        
        # Format sizes in human readable format
        local orig_fmt=$(numfmt --to=iec-i --suffix=B $original_size 2>/dev/null || printf "%.1fM" $(echo "scale=1; $original_size/1024/1024" | bc))
        local webp_fmt=$(numfmt --to=iec-i --suffix=B $webp_size 2>/dev/null || printf "%.1fM" $(echo "scale=1; $webp_size/1024/1024" | bc))
        
        echo -e "${GREEN}✓ Converted: $(basename "$input_file") (${orig_fmt} → ${webp_fmt}, ${reduction}% smaller)${NC}"
        
        # Log to report
        echo "- $(basename "$input_file"): ${orig_fmt} → ${webp_fmt} (${reduction}% reduction)" >> "$REPORT_FILE"
    else
        echo -e "${RED}✗ Failed to convert: $(basename "$input_file")${NC}"
        failed_conversions=$((failed_conversions + 1))
    fi
}

echo -e "${BLUE}Processing PNG files...${NC}"
while IFS= read -r -d '' png_file; do
    convert_to_webp "$png_file"
done < <(find "$IMAGES_DIR" -name "*.png" -print0)

echo ""
echo -e "${BLUE}Processing JPEG files...${NC}"
while IFS= read -r -d '' jpg_file; do
    convert_to_webp "$jpg_file"
done < <(find "$IMAGES_DIR" \( -name "*.jpg" -o -name "*.jpeg" \) -print0)

echo ""
echo -e "${BLUE}Optimization Complete!${NC}"
echo ""

# Calculate final statistics
total_reduction=$((total_original - total_webp))
percentage_reduction=$([ $total_original -gt 0 ] && echo "scale=1; $total_reduction * 100 / $total_original" | bc || echo "0")

# Format final statistics
orig_fmt=$(numfmt --to=iec-i --suffix=B $total_original 2>/dev/null || printf "%.1fM" $(echo "scale=1; $total_original/1024/1024" | bc))
webp_fmt=$(numfmt --to=iec-i --suffix=B $total_webp 2>/dev/null || printf "%.1fM" $(echo "scale=1; $total_webp/1024/1024" | bc))
reduction_fmt=$(numfmt --to=iec-i --suffix=B $total_reduction 2>/dev/null || printf "%.1fM" $(echo "scale=1; $total_reduction/1024/1024" | bc))

# Display statistics
echo "════════════════════════════════════════"
echo -e "${GREEN}Files Converted:${NC} $files_converted"
echo -e "${RED}Failed Conversions:${NC} $failed_conversions"
echo ""
echo -e "${YELLOW}Original Total Size:${NC} $orig_fmt"
echo -e "${GREEN}WebP Total Size:${NC} $webp_fmt"
echo -e "${BLUE}Space Saved:${NC} $reduction_fmt (${percentage_reduction}%)"
echo "════════════════════════════════════════"
echo ""

# Update report file with summary
cat >> "$REPORT_FILE" << EOF

## Statistics
- **Files Converted**: $files_converted
- **Failed Conversions**: $failed_conversions
- **Original Total Size**: $orig_fmt
- **WebP Total Size**: $webp_fmt
- **Space Saved**: $reduction_fmt (${percentage_reduction}%)

## Next Steps
1. **Update HTML templates** to use WebP with PNG fallback:
   \`\`\`html
   <picture>
     <source srcset="image.webp" type="image/webp">
     <img src="image.png" alt="description">
   </picture>
   \`\`\`

2. **Add responsive images**:
   \`\`\`html
   <picture>
     <source media="(min-width: 768px)" srcset="image-lg.webp" type="image/webp">
     <source media="(min-width: 768px)" srcset="image-lg.png">
     <source srcset="image-sm.webp" type="image/webp">
     <img src="image-sm.png" alt="description">
   </picture>
   \`\`\`

3. **Implement lazy loading** (add in Phase 2)

## Browser Support
WebP is supported in:
- Chrome/Edge 23+
- Firefox 65+
- Safari 16+
- Opera 11+

The fallback PNG/JPEG ensures compatibility with older browsers.
EOF

echo -e "${BLUE}Report saved to: $REPORT_FILE${NC}"

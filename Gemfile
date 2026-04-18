source 'https://rubygems.org'

group :jekyll_plugins do
  gem 'jekyll'
  gem 'jekyll-feed'
  gem 'jekyll-sitemap'
  gem 'jekyll-redirect-from'
  gem 'jemoji'
  gem 'webrick', '~> 1.8'
end

# Only needed for local dev to match GitHub Pages environment.
# Excluded on Vercel via BUNDLE_WITHOUT=github_pages (see vercel.json)
group :github_pages do
  gem 'github-pages'
  gem 'connection_pool', '2.5.0'
end

gem 'jekyll-sass-converter', '~> 2.0'

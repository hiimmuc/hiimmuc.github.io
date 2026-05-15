# Experience

## Work Experience

### VinMotion, VinGroup

- Role: AI/Robotics Engineer (PermanentFull-time)
- Period: June 2025 – Present
- Location: Hanoi, Vietnam
- Stack: ROS 2, Python, PyTorch, LangGraph, Tool Calling, VLA, VLM, Gazebo
- Bullets:
    - Developed **embodied task-planning modules** using **multi-agent workflows** and **Vision-Language Models** for autonomous task execution, and decision-making in humanoid robots
    - Built and deployed model-based and model-free **6DoF object pose estimation** modules to improve robotic grasping accuracy
    - Developed an **instruction-following data generation and benchmarking** pipeline for VLN training, automating dataset creation and evaluation workflows
- Projects:
    - Task Planning for Embodied AI → /projects/task-planning-embodied/
    - 6-DoF Object Pose Estimation → /projects/pose-estimation/
    - Instruction Following Datagen & Benchmark → /projects/instruction-following-datagen-benchmark/
- Key Skills: ROS 2, LangGraph, VLM, VLA, PyTorch, Tool Calling, Humanoid Robotics, Gazebo

### AIS, VMO Holdings

- Role: AI Engineer (Contract full-time remote)
- Period: May 2025 – Sep 2025
- Location: Hanoi, Vietnam
- Stack: Python, FastAPI, ONNX, LangChain, LangGraph, LLM, NLP, ASR, TTS
- Bullets:
    - Built a **Computer Vision Acceleration Pipeline** cutting development-phase time cost by 50–70%
    - **Warehouse Package Tracking** with RF-Detr deployed in warehouse via surveillance cameras, automating storage processes
    - **Food-Ordering Agentic Workflow** with LangGraph deployed in kiosks to automate ordering process from customer interaction (STT/NLP) to order fulfillment and customer feedback collection (TTS/NLP)
- Projects: [hidden — company privacy policy]

### Human Robotics Laboratory, NAIST

- Role: Research Assistant (Contract full-time)
- Period: Nov 2023 – Sep 2025
- Location: Ikoma, Japan
- Stack: Flutter, Python, Unity, Unreal Engine, ROS 2
- Bullets:
    - Developed an **Android VR See-Through System** for medical assessment robots supporting clinical observation
    - Designed an **Unreal-Based VR Driving Simulator** with integrated AI driving assistant for driver training and cognition evaluation (Hitachi Corp collaboration)
- Projects:
    - Personalized Voice-Based eHMI → /projects/personalized-voice-based-eHMI/
    - Android VR See-Through System → /projects/android-vr-see-through/
    - Unreal-Based VR Driving Simulator → /projects/unreal-vr-driving-simulator/
- Key Skills: Flutter, Unreal Engine, Unity, ROS 2, Generative AI, HRI, VR/AR

### Viettel Big Data Analytics Center, Viettel Group

- Role: AI Engineer (Permanent Full-time)
- Period: Nov 2021 – Sep 2023
- Location: Hanoi, Vietnam
- Stack: Python, PyTorch, Triton, Docker, Kafka, ASR, VAD, NLP, LLM, Speaker Verification
- Bullets:
    - Built and deployed **large-scale** speaker verification for Viettel Call Center — serving millions of customers daily with **>99%** accuracy, significantly reducing manual workload (>50%), preventing fraud, and improving customer experience
    - Developed a **voice quality assessment system** for call centers to monitor and improve audio quality for speech datasets, leading to a reduction of manual review time by **80%** and improving ASR performance through better data quality
    - Participated in VoxCeleb Speaker Recognition Challenge (VoxSRC) 2022, Vietnamese Language and Speech Processing (VLSP 2022)
    - Data preparation and implementation of LLM into the My Viettel chatbot platform
- Projects:
    - Speaker Verification System → /projects/speaker-verification/
    - Voice Quality Assessment → /projects/voice-quality-assessment/
    - LLM Chatbot — fine-tuned PaLM & LLaMA on company data (2022) [no page]
- Internal Contributions:
    - Tech Talk: Speaker Verification for Call Center — internal knowledge-sharing session
    - Mentor — Viettel Digital Talent Program 2022
- Achievements:
    - High-rank placement in VLSP (Vietnamese Language & Speech Processing) competition
    - Participated in VoxCeleb Speaker Recognition Challenge (VoxSRC) 2022 (Top 20)
- Key Skills: Speaker Verification, PyTorch, Triton, ASR, VAD, LLM Fine-tuning, Docker, Kafka

### Viettel Digital Talents Program 2021, Viettel Group

- Role: AI Intern (Part-time internship)
- Period: Apr 2021 – Oct 2021
- Location: Hanoi, Vietnam
- Bullets:
    - Completed intensive AI & Data Science training under Viettel's national talent initiative
    - Contributed to Vietnamese speaker verification system later deployed in production
- Projects:
    - Speaker Verification System → /projects/speaker-verification/
- Achievement: Selected as Top 10 candidate out of the entire Viettel Digital Talent Program 2021 cohort
- Key Skills: Python, Speaker Verification, Deep Learning, Data Science

---

## Education

### MEng — Human Robotics Interaction

- School: Nara Institute of Science and Technology (NAIST), Japan
- Period: Oct 2023 – Sep 2025
- Research: Personalized human-robot interface for APMVs using generative models tailored to passenger personality.
- Funded by MEXT Scholarship, Japan (2023).

### BSc — Automation & Electrical Engineering

- School: Hanoi University of Science and Technology (HUST), Vietnam
- Period: Sept 2018 – Sept 2022
- GPA: 3.52 / 4.0 — Graduated with Distinction, 2nd place in Thesis defense committee.
- Thesis: Speaker verification system for telecommunication service.

---

## Competitions

### VoxCeleb Speaker Recognition Challenge (VoxSRC) 2022 — Top 20

- Task: Speaker Verification — Track 1 (closed, no external data) and Track 2 (open, with external dataset)
- Approach:
    - Model fusion: RawNet (raw audio input) + ECAPA-TDNN (spectrogram input)
    - Multi-loss optimization: AAM-Softmax (classification) + Proxy Anchor (metric learning)
    - n-fold data augmentation pipeline

### Vietnamese Language and Speech Processing (VLSP) 2022 — Top 5

- Task: O-COCOSDA and VLSP 2022 - MSV Shared task: Multilingual Speaker Verification (Track 1: seen languages, Track 2: unseen languages, Track 3: cross-lingual)
- Approach:
    - Model fusion: RawNet (raw audio input) + ECAPA-TDNN (spectrogram input)
    - Pretrained self-supervised models: Wav2Vec 2.0 and WavLM as feature extractors
    - Multi-loss optimization for cross-lingual speaker representation

### Data-Centric AI Competition, FPT 2021

- Task: Improve human detection with YOLOv5 using a data-driven approach only (no model architecture changes)
- Approach:
    - Data preprocessing: noisy label removal, annotation standardization, image quality enhancement
    - Ensemble with diverse augmentation strategies and hyperparameter sets
    - Knowledge distillation to reduce manual data evaluation overhead

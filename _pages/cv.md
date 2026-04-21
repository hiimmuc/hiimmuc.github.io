---
layout: archive
title: "Resume"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======

* **M.Eng.** in Human-Robotics Interaction, [Nara Institute of Science and Technology (NAIST)](https://www.naist.jp/en/), Ikoma, Nara, Japan — Oct 2023 – Sep 2025
    * Research: Personalized human-robot interface for automatic personal mobility vehicles using generative models tailored to passenger personalities
    * Coursework: Machine Learning, Deep Learning, Speech Processing, Generative AI, Human-Robot Interaction
    * Funded by MEXT Scholarship (Japan, 2023)

* **B.Sc.** in Automation and Electrical Engineering, [Hanoi University of Science and Technology (HUST)](https://www.hust.edu.vn/), Hanoi, Vietnam — Sept 2018 – Sept 2022
    * GPA: 3.52 / 4.0 — Graduated with **Distinction**, 2nd place in Thesis defense committee
    * Thesis: *Speaker verification system for telecommunication service*

Work Experience
======

* **AI/Robotics Engineer** — VinMotion, VinGroup · Hanoi, Vietnam · June 2025 – Present
    * Developing and deploying VLMs and VLAs into next-generation humanoid robot platforms
    * Integrated LangGraph and multi-tool calling for fully autonomous manipulation and navigation
    * Contributing to the robotics AI framework connecting perception, planning, and control layers
    * *Stack: ROS 2, Python, PyTorch, LangGraph, VLA, VLM, Gazebo*

* **AI Engineer** — AIS, VMO Holdings · Hanoi, Vietnam · May 2025 – Sep 2025
    * Built an end-to-end Computer Vision Acceleration Pipeline, reducing inference latency 50–70%
    * Package tracking with RF-Detr in warehouse surveillance camera streams
    * LLM + LangGraph agents for food-ordering kiosk automation
    * *Stack: Python, FastAPI, ONNX, LangChain, LangGraph, ASR, TTS*

* **Research Assistant** — Human Robotics Laboratory, NAIST · Ikoma, Japan · Nov 2023 – Sep 2025
    * Developed an Android VR See-Through System for medical assessment robots
    * Designed an Unreal-based VR driving simulator with integrated AI assistant (w/ Hitachi Corp)
    * *Stack: Flutter, Python, Unity, Unreal Engine, ROS 2*

* **AI Engineer** — Viettel Big Data Analytics Center, Viettel Telecom · Hanoi, Vietnam · Nov 2021 – Sep 2023
    * Led development of a large-scale speaker verification system for Viettel Call Center (millions of customers/day)
    * Deployed via Triton Inference Server; reduced manual verification workload by >50%
    * Achieved ≈99% accuracy on Vietnamese datasets; ranked Top 20 in VoxSRC 2022
    * Deployed LLM into the chatbot on My Viettel platform
    * *Stack: Python, PyTorch, Triton, Docker, Kafka, ASR, VAD, NLP*

* **AI Intern** — Viettel Digital Talents Program 2021 · Hanoi, Vietnam · Apr 2021 – Oct 2021
    * Trained on core AI/Data Science methods; contributed to Vietnamese speaker verification system

Skills
======

* **Programming:** Python, C/C++, R, MATLAB
* **ML/DL Frameworks:** PyTorch, TensorFlow
* **MLOps & Deployment:** Triton, Docker, FastAPI, ONNX
* **NLP & Speech:** LLM, ASR, TTS, Speaker Verification, VAD
* **Computer Vision:** Object Detection, YOLO, SSD, RF-Detr, VLM/VLA
* **Agentic AI:** LangChain, LangGraph, Tool Calling
* **Robotics:** ROS, ROS 2, Gazebo, Unreal Engine
* **Tools:** Linux, Bash/Zsh, Git, LaTeX, Jira

Publications
======

  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>

<!-- Talks
======

  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html %}
  {% endfor %}</ul>

Teaching
======

  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul> -->

Awards & Honors
======

* **MEXT Scholarship** — Japan, 2023
* **3rd Place** — CodeWar-Icomm Competition, Vietnam, 2021

Languages
======

* Vietnamese — Native
* English — IELTS 6.5

Full Resume (PDF)
======

<!-- You can download and view my complete resume in PDF format below:

<div style="text-align: center; margin: 20px 0;">
  <a href="{% include base_path %}/files/Resume_DangPhuongNam_AIEngineer.pdf" class="btn btn--primary" download>
    📥 Download Resume (PDF)
  </a>
</div> -->

<div style="text-align: center; margin: 20px 0; border: 1px solid #ddd; padding: 10px; border-radius: 5px;">
  <embed src="{% include base_path %}/files/Resume_DangPhuongNam_AIEngineer.pdf" type="application/pdf" width="100%" height="600px" />
</div>

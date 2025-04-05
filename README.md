# 🛩️ Team Raptor - MathWorks MiniDrone Competition 2024

> 🎖️ **Top 10 Finalist (All India)**  
> 🏛️ Grand Finale hosted at the **Department of Aerospace Engineering, IISc Bengaluru**

Welcome to the official repository for **Team Raptor**, proudly selected among the **Top 10 teams in India** for the **MathWorks MiniDrone Competition 2024**. This repository contains all the components of our drone project, developed using **MATLAB**, **Simulink**, and **Stateflow**.

---

## 📚 Table of Contents

- [📌 Project Description](#project-description)
- [📁 Folder Structure](#folder-structure)
- [🛠️ Technologies Used](#technologies-used)
- [👥 Team Members](#team-members)
- [📜 License](#license)
- [🙏 Acknowledgements](#acknowledgements)

---

## 📌 Project Description

The competition required teams to design and simulate an **autonomous drone system** capable of real-time flight control, path planning, and task execution in a simulated environment. Our system is built with a modular, model-based design approach using:

- Autonomous control via **Simulink controllers**
- Airframe modeling (both linear and nonlinear)
- Sensor simulations
- Task scheduling and tracking logic

---

## 📁 Folder Structure
Raptor/ ├── controller/ # Simulink-based control system models
├── libraries/ # Custom Simulink and MATLAB function blocks
├── linearAirframe/ # Linear drone dynamics modeling
├── nonlinearAirframe/ # Nonlinear simulation of drone flight
├── mainModels/ # Top-level Simulink models and mission logic
├── resources/ │ └── project/ # Project-related auto-generated resources
├── support/ │ └── texture/ # Visual assets and textures for the simulation
├── tasks/ │ └── private/ # Task assignment logic and internal scripts
├── tests/ # Test scripts and validation cases
├── utilities/ # Helper functions, setup scripts, logging
└── work/ # Simulation results and temporary files

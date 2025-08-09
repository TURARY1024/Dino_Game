# Dinosaur Game using Multithreading

A multi-threaded dinosaur game implemented for the **CS3423 Operating Systems** course, running on the **EdSim51** 8051 microcontroller simulator using the **SDCC** compiler.  
The game is controlled by a keypad and displayed on an LCD, with core logic designed to operate under strict memory constraints.

## 📌 Features
- **Multithreading**: Game logic, rendering, and user input handled by separate threads.
- **Keypad Control**: Operated via a 4×4 keypad connected using only **8 GPIO pins**.
- **LCD Display**: Real-time rendering of dinosaur position, obstacles, and score.
- **Random Obstacle Generation**: Cacti appear randomly, and the player must avoid them.
- **Synchronization**: Shared memory and semaphores used for safe multi-threaded operations.

## 🎯 Objectives
- Implement a playable game within limited **8051 microcontroller** memory.
- Demonstrate **real-time thread synchronization** with semaphores.
- Showcase **hardware-level programming** using SDCC.

## 🛠 Technologies
- **Language**: C (SDCC compiler)
- **Simulator**: [EdSim51](http://www.edsim51.com/)
- **Peripherals**: Keypad, LCD (16x2 character display)

## 📷 Demo
*(Insert GIF or screenshot of gameplay here)*

## 🚀 How to Run
1. Open project files in **SDCC**.
2. Load the compiled `.hex` file into **EdSim51**.
3. Start simulation, use keypad to control the dinosaur:
   - `2`: Move up
   - `8`: Move down
   - `#`: Confirm difficulty setting

## 📅 Timeline
**Feb. 2025 – June 2025**  
Individual project for CS3423 Operating Systems.

## 📜 License
MIT License.

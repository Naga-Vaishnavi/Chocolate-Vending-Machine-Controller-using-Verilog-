# Chocolate Vending Machine Controller using Verilog HDL

## 📌 Description
This project implements a chocolate vending machine using Verilog HDL based on finite state machine (FSM) design. The machine accepts fixed coin inputs (₹5, ₹10, ₹20), tracks the total amount, and dispenses chocolate once the required cost (₹20) is reached.

A self-checking testbench is included to simulate different coin insertion scenarios and display meaningful output messages.

---

## 🧠 Need of the Project
- To understand FSM-based digital system design
- To learn state transitions and control logic
- To practice Verilog RTL coding and testbench development
- To gain hands-on experience for VLSI/RTL interviews

---

## ⭐ Importance
- Demonstrates real-world application of FSMs
- Commonly asked project in interviews
- Strengthens understanding of sequential logic
- Useful for RTL design and verification roles

---

## ⚙️ Features
- FSM-based control logic
- Supports ₹5, ₹10, and ₹20 coin inputs
- Dispenses chocolate at correct amount
- Reset functionality
- Informative testbench output messages

---

## 🧪 Example Working
| Inserted Amount | Machine Response |
|----------------|------------------|
| ₹5             | Ask for more money |
| ₹10            | Ask for more money |
| ₹15            | Ask for more money |
| ₹20            | Chocolate dispensed |
| > ₹20          | Invalid input |

---

## 🏗 Project Structure
Chocolate-Vending-Machine/
├── design.v # Verilog design (FSM)
├── test_bench.v # Testbench
├── README.md # Project documentation

## 🛠 How to Run Simulation Using EDA tool

Add both design files and the testbench to your Verilog simulator

Compile and Run

Verify outputs




## ✅ Conclusion
This project provides a clear understanding of FSM-based digital design and serves as a solid beginner-friendly RTL and verification project.










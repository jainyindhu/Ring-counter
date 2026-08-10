🔄 4-Bit Ring Counter using Verilog HDL

📌 Project Description

This project implements a 4-bit Ring Counter using Verilog HDL.

A Ring Counter is a type of shift register in which the output of the last flip-flop is connected back to the input of the first flip-flop.

In this project, a single logic "1" circulates continuously through four flip-flops.

The counting sequence is:

0001 → 0010 → 0100 → 1000 → 0001

---

🎯 Objective

The objective of this project is to design and simulate a 4-bit Ring Counter using Verilog HDL and verify its operation using a testbench and waveform simulation.

---

🔧 Inputs

Signal| Description
"clk"| Clock signal
"reset"| Initializes the counter

---

📤 Output

Signal| Description
"q[3:0]"| 4-bit ring counter output

---

🧠 Working Principle

A Ring Counter uses a group of flip-flops connected as a shift register.

The output of the last flip-flop is fed back to the first flip-flop.

Initially, reset loads:

0001

After each rising edge of the clock:

0001
0010
0100
1000
0001

The sequence repeats continuously.

---

📊 Truth / State Table

Clock| Q3| Q2| Q1| Q0
Reset| 0| 0| 0| 1
1| 0| 0| 1| 0
2| 0| 1| 0| 0
3| 1| 0| 0| 0
4| 0| 0| 0| 1
5| 0| 0| 1| 0

---

🔄 Ring Counter Sequence

                ┌───────────────┐
                │               │
                ▼               │
              0001              │
                │               │
                ▼               │
              0010              │
                │               │
                ▼               │
              0100              │
                │               │
                ▼               │
              1000 ─────────────┘

---

🏗️ Block Diagram

          ┌─────┐    ┌─────┐    ┌─────┐    ┌─────┐
CLK ─────►│ FF0 │───►│ FF1 │───►│ FF2 │───►│ FF3 │
          └─────┘    └─────┘    └─────┘    └─────┘
             ▲                              │
             └──────────────────────────────┘

                 4-Bit Ring Counter

---

💻 Verilog Implementation

The main shift operation is:

q <= {q[2:0], q[3]};

This shifts the bits and feeds the last bit back into the first position.

The reset initializes the counter:

if (reset)
    q <= 4'b0001;

---

🧪 Testbench

The testbench performs the following operations:

1. Generates the clock signal.
2. Applies reset.
3. Initializes the ring counter to "0001".
4. Observes the counter after every clock cycle.
5. Verifies the circular shifting sequence.
6. Generates a waveform file for simulation.

---

🖥️ Expected Console Output

Time = 15 | Ring Counter = 0010
Time = 25 | Ring Counter = 0100
Time = 35 | Ring Counter = 1000
Time = 45 | Ring Counter = 0001
Time = 55 | Ring Counter = 0010
Time = 65 | Ring Counter = 0100
--------------------------------
Simulation Completed
--------------------------------

---

📈 Simulation

The testbench generates:

waveform.vcd

The waveform can be viewed using GTKWave.

Important signals to observe

- "clk"
- "reset"
- "q[3:0]"

The waveform should show:

0001 → 0010 → 0100 → 1000 → 0001

Save the waveform screenshot as:

simulation/waveform.png

---

▶️ How to Run the Simulation

Step 1: Compile

Using Icarus Verilog:

iverilog -o ring_counter_sim ring_counter.v ring_counter_tb.v

Step 2: Run

vvp ring_counter_sim

Step 3: View Waveform

gtkwave waveform.vcd

---

🛠️ Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code
- GitHub

---

📚 Applications

Ring Counters are used in:

- Digital counters
- Sequence generators
- Timing circuits
- Control circuits
- Frequency division
- LED pattern generation
- Digital systems
- FPGA applications

---

⭐ Key Learning Outcomes

This project demonstrates:

- Shift register operation
- Ring counter architecture
- Flip-flop-based sequential logic
- Clock-driven state changes
- Reset operation
- Verilog HDL coding
- Testbench development
- Waveform simulation
- GitHub project organization

---

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering
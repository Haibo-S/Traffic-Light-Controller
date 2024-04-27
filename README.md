# Traffic Light Controller

This project simulates a Traffic Light Controller (TLC) using VHDL, implementing sequential logic and state machines. The traffic light controller sequence and behavior are based on both Moore and Mealy state machines, with functionalities supporting pedestrian crossing requests.

## Features

- **State Machine Design:** Utilizes both Moore and Mealy designs for state machine logic.
- **Pedestrian Request Handling:** Supports external signals for pedestrian crossing which affects the state transitions.
- **Synchronous Design:** Ensures that all state transitions are robust against metastability using synchronous design techniques.

## Prerequisites

Before you can run and modify this project, ensure you have the following hardware and software:

### Hardware

- **LogicalStep Board**: Equipped with an Altera MAX10 Field Programmable Gate Array (FPGA) chip. This board provides the necessary infrastructure to implement and test the VHDL code for the traffic light controller.

### Software

- **Intel (Altera) Quartus Prime FPGA Design Software (v15.1)**: Required to compile and upload the VHDL code to the FPGA. This software offers a robust suite of tools for FPGA design and is essential for loading the FPGA configuration and simulating the VHDL code.

### Installation

1. **LogicalStep Board Setup**:
   - Ensure that your LogicalStep Board is properly configured and connected to your development computer.

2. **Software Installation**:
   - Download and install Intel Quartus Prime v15.1 from [Intel's official website](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/download.html).
   - Follow the installation instructions provided by the software to set up the design environment.

3. **Clone the repository**:
   - Use Git or checkout with SSH using the following web URL:
     ```
     git clone git@github.com:Haibo-S/Traffic-Light-Controller.git
     ```

4. **Open and Configure the Project in Quartus**:
   - Open Intel Quartus Prime.
   - Navigate to `File > Open Project` and select the `.qpf` file from the cloned repository.

5. **Compile and Upload**:
   - Compile the project by navigating to `Project > Compile Project`.
   - Once compiled successfully, use the Programmer tool within Quartus to upload

## Design Overview

### State Machine Overview

The Traffic Light Controller (TLC) utilizes a comprehensive state machine to manage traffic and pedestrian signals accurately and safely. This state machine is designed to handle multiple inputs and outputs, transitioning through states based on internal logic and external requests (such as pedestrian buttons). 

The state machine is implemented using VHDL and operates under the guidelines of either Moore or Mealy state machines, depending on the chosen configuration. Below is a snippet of VHDL that illustrates the structure of the state machine's entity and its ports:

```vhdl
-- State Machine Entity and Ports Definition
ENTITY ccp_state_machine IS Port (
    clk_input, reset, sm_clken, blink_sig : IN std_logic;   -- Input signals
    NS_Command, EW_Command : IN std_logic;                  -- North-South and East-West cross requests
    NS_A, NS_G, NS_D, EW_A, EW_G, EW_D : OUT std_logic;     -- Traffic light outputs for North-South and East-West
    display : OUT std_logic_vector(3 downto 0)              -- LED outputs to show the current state number
);
END ENTITY;
```

### Logic for State Transition
The VHDL code defines specific state transitions that dictate the behavior of traffic lights based on real-time traffic and pedestrian conditions. Each state represents a unique configuration of traffic lights, ensuring all transitions are safe and predictable. Here's an example of how transitions between states are handled:

```vhdl
--VHDL State Transition Logic
CASE current_state IS
    WHEN S0 =>
        IF (EW_Command = '1' AND NS_Command = '0') THEN
            next_state <= s6; -- Transition logic for specific conditions
        ELSE
            next_state <= s1;
        END IF;
    -- Additional state cases here
END CASE;
```
### Clock Generation for State Machine
The clock generation logic ensures that the state machine updates at consistent intervals, crucial for maintaining the timing requirements of traffic signals. The clock generator uses a 50 MHz input clock to produce slower clocks for the state machine and blinking signals for pedestrian indicators. Below is a snippet of the clock generation module:

```vhdl
-- Clock Generator Entity and Architecture
ENTITY Clock_generator IS
    PORT (
        sim_mode : IN boolean;      -- Simulation mode selector
        reset : IN std_logic;       -- Reset signal
        clkin : IN std_logic;       -- 50 MHz clock input
        sm_clken : OUT std_logic;   -- State machine clock enable (1 Hz)
        blink : OUT std_logic       -- Blink signal for pedestrian indicators (4 Hz)
    );
END ENTITY;

ARCHITECTURE rtl OF Clock_generator IS
    SIGNAL digital_counter : std_logic_vector(24 downto 0);
    BEGIN
        -- Clock division logic
        clk_divider: PROCESS (clkin)
        BEGIN
            IF (rising_edge(clkin)) THEN
                IF (reset = '1') THEN
                    digital_counter <= (OTHERS => '0');
                ELSE
                    digital_counter <= digital_counter + 1;
                END IF;
            END IF;
        END PROCESS;

        sm_clken <= digital_counter(24); -- Generate 1 Hz signal
        blink <= digital_counter(22); -- Generate 4 Hz blink signal
    END ARCHITECTURE;
```

### Signal Mapping

The following table outlines the input and output signals for the project on the LogicalStep Board, along with their assigned ports and respective functionalities. This mapping is critical for understanding how the Traffic Light Controller interfaces with the hardware components of the FPGA board and how it processes input and output operations.

| SIGNAL TYPE | SIGNAL FUNCTION              | ASSIGNED PORT(s)       | COMMENT                                            |
|-------------|------------------------------|------------------------|----------------------------------------------------|
| Inputs      | clkin_50                     | Clkin_50               | 50 MHz input clock                                 |
|             | RESET_n                      | Pb_n(3)                | RESET_n (Active_low). It must be inverted          |
|             | EW Pedestrian Crossing Request | Pb_n(1)              | input for EW crossing. It must be inverted         |
|             | NS Pedestrian Crossing Request | Pb_n(0)              | input for NS crossing. It must be inverted         |
| Outputs     | seg7_data [for segments A,D,G] | Seg7_data[A,D,G]     | Used to Illuminate Seg7 LED display for TLC Columns |
|             | seg7_data [for segments B,C,E,F] | Seg7_data[B,C,E,F] | OFF                                                |
|             | seg7_char1                   | seg7_char1             | Driven by seg7_mux for EW TL Column Digit1 <-NOTE  |
|             | seg7_char2                   | seg7_char2             | Driven by seg7_mux for NS TL Column Digit2<-NOTE   |
|             | Holding Register – EW | leds[3],     | Pending EW Crossing Request                        |
|             | EW CROSS DISPLAY | leds[2],     | Pending NS Crossing Request                        |
|             | Holding Register - NS                             | leds[1],               | EW Crossing Display                                |
|             |    NS CROSS DISPLAY                          | leds[0]                | NS Crossing Display                                |
|             | State Number[3..0]           | Leds[7 downto 4]       | State Machine State Number                         |

Each signal has been assigned to specific ports to enable precise control and monitoring of the traffic light system. For instance, the `clkin_50` serves as the primary clock source that orchestrates the sequential logic of the state machine. The reset signal `RESET_n` is active-low, meaning that it must be held high under normal operation and pulled low to initiate a system reset. The pedestrian crossing requests are active-high inputs that are triggered by corresponding pushbuttons on the LogicalStep Board; however, they are inverted within the system logic to match the active-low configuration of the physical buttons.


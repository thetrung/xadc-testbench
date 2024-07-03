# XADC-TestBench 
A nicer demo to guide you through the darkness of Xilinx FPGA journey, a fully-commented, nicer naming testbench to let you understand how XADC work, along how to write a testbench that really work on Vivado Simulator (2024.1).

### NOTE 
- Firstly, I have to say that `Hardware Description Languages` (HDLs) are already hard to debug, but they also add-up this complexity by naming very short & meaningless like a disease to stop newbie from reading it.
- `busy_out` or `data_ready_out`(or `drdy_out`) is quite important signal, that indicate your `XADC` is working on conversion & output data, specially during simulation, when `design.txt` error occurs.
- Once you see `design.txt` can't be found in TCL console during simulation, that mean you need to import it again from `.../mem_init_files/design.txt` with option `Copy sources into project` ticked.
- The XADC itself have `Single Channel` & `Channel Sequencer` options, which let you pick a single channel or upto 16 channels.
- But in this demo, I actually use that `channel-sequencer` to make the simulation look nicer: As per-channel-selected, it output different static data.


### NAMING EXPLAINATION
Most ports are useless in typical scenarios, so all you need to take care of, are the important ones like :
-   `dclk_in` or `clock_in` - To put in your `100Mhz` Clock.
-   `daddr_in` or `address_bus_in` - Address bus for Dynamic Reconfiguration Port (DRP).
-   `di_in` or `data_bus_in` - 16-bit Input data bus for DRP.
-   `den_in` or `enable_in` - Enable signal for the DRP.
-   `dwe_in` or `write_enable_in` - Write-Enable-Signal for DRP. When signal is low, a DRP read operation is done.
-   `reset_in` - Reset signal for System Monitor control logic.
-   `data_out` - 16-bit binary-sampled-data output, but on most Artix-7/Zynq-7 will only take use of 12-bit.
-   `channel_out` - Channel Selection Output.
-   `busy_out` - ADC-Busy-Signal : This one is especially interesting for its important indication of working XADC module.
-   `drdy_out` or `data_ready_out` - Data-Ready-Signal for DRP. Active-High on readable `data_out`.
-   `eoc_out` or `end_of_conversion_out` - End-Of-Conversion signal. Active-High when data is written to register.


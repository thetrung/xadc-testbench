`timescale 1ns / 1ps


module XADC_TestBench(

    // Clock :
     input wire clock_in               // Clock input for dynamic reconfiguration port (DRP) 
    
    // Input Data :
    ,input wire [15 : 0] data_bus_in   // Input data bus for dynamic reconfiguration port (DRP)
    ,input wire [6 : 0] address_bus_in // Addresss bus for dynamic reconfiguration port (DRP)
    
    // Input Signal :
    ,input wire reset_in               // Reset singal for System Monitor control logic.
    ,input wire enable_in              // Enable DRP signal.
    ,input wire write_enable_in        // Write enable signal for dynamic reconfiguration port (DRP).
    
    // Input Analog :
    // ,input wire v_aux0p_in              // v_aux0 positive analog input. 
    // ,input wire v_aux0n_in              // v_aux0 negative analog input. 
    ,input wire v_positive_in          // Dedicated Analog Input Pair (positive input).
    ,input wire v_negative_in          // Dedicated Analog Input Pair (negative input).
    
    // Output Data :
    ,output wire [15 : 0] data_out     // [15:0] binary sample data but only 12-bit will be useful.
    ,output wire [4 : 0] channel_out   // Channel selection outputs.

    // Output Signal : 
    ,output wire busy_out              // ADC busy signal (conversing sample data...).
    ,output wire data_ready_out        // Data ready signal for the dynamic reconfiguration port.
    ,output wire end_of_conversion_out // End of conversion signal. active-High when data->reg.
);
    
    
xadc_wiz_0 XADC_INST (
    
    .dclk_in(clock_in),             // Ex: having a clock with 100MHZ frequency.
    
    .di_in(data_bus_in),            // 16-bit Input data bus for dynamic reconfiguration port (DRP).
    .daddr_in(address_bus_in),      // Address of the bus in 16-bit format.
    
    .reset_in(reset_in),            // Reset signal for System Monitor control logic.
    .den_in(enable_in),             // Enable signal for the dynamic reconfiguration port (DRP).
    .dwe_in(write_enable_in),       // When signal is low, a DRP read operation is done.
    
    // .vauxp0(v_aux0p_in),             // Aux Analog v_aux0_in Input positive.
    // .vauxn0(v_aux0n_in),             // Aux Analog v_aux0_in Input positive.
    .vp_in(v_positive_in),          // Dedicated Analog Input Pair (positive input).
    .vn_in(v_negative_in),          // Dedicated Analog Input Pair (negative input).
    
// output data :
    .do_out(data_out),              // [15:0] binary sample data but only 12-bit will be useful.
    .channel_out(channel_out),      // Channel selection outputs.

// output signal :
    .busy_out(busy_out),            // ADC busy signal (conversing sample data...).
    .drdy_out(data_ready_out),      // active-High on data-ready to read.
    .eoc_out(end_of_conversion_out),// End of conversion signal. active-High when data->reg.

// non-sense yet.
    .alarm_out(),                   // OR'ed output of all the Alarms.
    .eos_out()                      // God know what's that for.
    
);


endmodule

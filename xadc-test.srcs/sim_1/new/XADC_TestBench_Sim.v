`timescale 1ns / 1ps

module XADC_TestBench_Sim(

);

reg clock_in;

reg [15:0] data_bus_in;
reg [6:0] address_bus_in;

reg reset_in;
// enable_in
reg write_enable_in;

// reg v_aux0p_in;
// reg v_aux0n_in;
reg v_positive_in;
reg v_negative_in;

// Output Data
wire [15 : 0] data_out;
wire [4 : 0] channel_out;

// Output Signal
wire busy_out;
wire data_ready_out;
wire end_of_conversion_out;

parameter PERIOD = 5;

initial
begin
  // Reset Clock :
  clock_in = 0;
  forever #(PERIOD/2) clock_in = ~clock_in;

  // Init values :
  reset_in = 1;
end

initial
begin

  // Start :
  #(2*PERIOD);
  reset_in = 0;
  v_positive_in = 0;
  v_negative_in = 0;
  // v_aux0n_in = 0;
  // v_aux0p_in = 0;
  write_enable_in = 1;
  data_bus_in = 16'b0;
  address_bus_in = 6'b0;
end

initial begin
    $monitor("Time: %0dns, Reset: %b, Digital Output: %%d", $time, reset_in, data_out);
end
    
XADC_TestBench XADC_Sim (
  .clock_in(clock_in),                              // Clock input for dynamic reconfiguration port (DRP) having a clock with 100MHZ frequency 
  .address_bus_in({2'b00, channel_out}),            // Addresss bus for dynamic reconfiguration port (DRP)
  
  .data_bus_in(data_bus_in),                        // Input Data Bus for DRP.
  .write_enable_in(end_of_conversion_out),          // Low on DRP read operation is done.
  .enable_in(end_of_conversion_out),                // Enable signal for the dynamic reconfiguration port (DRP)
  
  .reset_in(reset_in),                              // Reset Signal for System Monitor Control logic.
  
  // AUX0
  // .v_aux0n_in(v_aux0n_in),
  // .v_aux0p_in(v_aux0p_in),
  // V
  .v_positive_in(0),                                // Dedicated Analog Input Pair (positive input)
  .v_negative_in(0),                                // Dedicated Analog Input Pair (negative input)
  
  .data_out(data_out),                              // [15:0] binary sample data but only 12-bit will be useful.
  .channel_out(channel_out),                        // Channel selection outputs.
  
  .busy_out(busy_out),                              // Indicate ADC Busy Signal.
  .data_ready_out(data_ready_out),                  // Data ready signal for the dynamic reconfiguration port.
  .end_of_conversion_out(end_of_conversion_out)     // End of conversion signal. active-High when data->reg
);

endmodule

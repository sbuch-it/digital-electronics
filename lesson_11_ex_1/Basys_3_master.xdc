## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Timing constraint
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## Switches
set_property PACKAGE_PIN V17 [get_ports {data_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]

set_property PACKAGE_PIN V16 [get_ports {data_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]

set_property PACKAGE_PIN W16 [get_ports {data_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]

set_property PACKAGE_PIN W17 [get_ports {data_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]

set_property PACKAGE_PIN W15 [get_ports {data_in[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[4]}]

set_property PACKAGE_PIN V15 [get_ports {data_in[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[5]}]

set_property PACKAGE_PIN W14 [get_ports {data_in[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[6]}]

set_property PACKAGE_PIN W13 [get_ports {data_in[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in[7]}]

set_property PACKAGE_PIN V2 [get_ports {msb_in}]
set_property IOSTANDARD LVCMOS33 [get_ports {msb_in}]

set_property PACKAGE_PIN R2 [get_ports {load}]
set_property IOSTANDARD LVCMOS33 [get_ports {load}]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {q_shift[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[0]}]

set_property PACKAGE_PIN E19 [get_ports {q_shift[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[1]}]

set_property PACKAGE_PIN U19 [get_ports {q_shift[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[2]}]

set_property PACKAGE_PIN V19 [get_ports {q_shift[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[3]}]

set_property PACKAGE_PIN W18 [get_ports {q_shift[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[4]}]

set_property PACKAGE_PIN U15 [get_ports {q_shift[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[5]}]

set_property PACKAGE_PIN U14 [get_ports {q_shift[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[6]}]

set_property PACKAGE_PIN V14 [get_ports {q_shift[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {q_shift[7]}]

set_property PACKAGE_PIN L1 [get_ports {lsb_out}]
set_property IOSTANDARD LVCMOS33 [get_ports {lsb_out}]

##Buttons
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

set_property PACKAGE_PIN T18 [get_ports shift_enable]
set_property IOSTANDARD LVCMOS33 [get_ports shift_enable]
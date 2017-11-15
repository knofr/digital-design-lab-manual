#!/bin/sh

rm -rf sim
mkdir  sim
cd     sim

iverilog -s testbench ../*/*.v
vvp -la.lst -n a.out -vcd
gtkwave dump.vcd
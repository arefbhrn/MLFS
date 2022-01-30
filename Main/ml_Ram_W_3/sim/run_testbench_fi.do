# Compile Package(s)

vcom -work work -explicit utils_pkg.vhd

vcom -work work -explicit \
    Acc.vhd \
    Arg_el.vhd \
    Argmax.vhd \
    Counter_I_0.vhd \
    Counter_L1.vhd \
    Counter_L2.vhd \
    Counter_L3.vhd \
    Counter.vhd \
    CreateWord.vhd \
    DualPort_RAM.vhd \
    FSM.vhd \
    generic_LUT_unit.vhd \
    NeuronCombinator1.vhd \
    NeuronCombinator2.vhd \
    NeuronCombinator3.vhd \
    Ram_W_1.vhd \
    Ram_W_2.vhd \
    Ram_W_3.vhd \
    RegWLoad.vhd \
    ShiftReg.vhd \
    SinglePort_RAM.vhd \
    SubNeurone_L1.vhd \
    SubNeurone_L2.vhd \
    SubNeurone_L3.vhd \
    FCNN_top_unit.vhd \
    sim/testbench_MNIST_FCNN_FI_100.vhdl

# Launch simulation without optimization

vsim work.testbench_MNIST_FCNN_FI

quietly set StdArithNoWarnings 1
quietly set NumericStdNoWarnings 1

if { [catch { glob ./sim/log/rep_*.log }] == 0 } {
    eval file delete -force "[glob ./sim/log/rep_*.log]"
}
if { [catch { glob rep_*.log }] == 0 } {
    eval file delete -force "[glob rep_*.log]"
}

source ../design_report.tcl
source sim/psfs_tb_ff.tcl


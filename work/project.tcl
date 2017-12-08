set projDir "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/planAhead"
set projName "clonedFinalProj"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/mojo_top_0.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/reset_conditioner_1.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/states_2.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/numbergen_3.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/multi_seven_seg_4.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/multi_seven_seg_4.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/multi_seven_seg_4.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/multi_seven_seg_4.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/multi_seven_seg_4.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/dectobin_13.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/dectobin_13.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/dectobin_13.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/dectobin_13.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/dectobin_13.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/binToDec_18.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/binToDec_18.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/binToDec_18.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/binToDec_18.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/bintodecsizetwo_22.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/bintodecsizetwo_22.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/alu_24.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/numbergen_3.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/edge_detector_9.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/button_conditioner_10.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pn_gen_50.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/counter_51.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/decoder_52.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/counter_51.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/decoder_52.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/counter_51.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/decoder_52.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/counter_51.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/decoder_52.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/counter_51.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/decoder_52.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/Adder_63.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/compare_64.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/Bitwise_65.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/shifter_66.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pn_gen_50.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v" "F:/Term6/Computational Structure/mojo/clonedFinalProj/work/verilog/pipeline_61.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "F:/Term6/Computational\ Structure/mojo/clonedFinalProj/constraint/CUSTOMIZED.ucf" "D:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
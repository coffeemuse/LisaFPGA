// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Wed Apr  1 02:38:17 2026
// Host        : alex-cattop running 64-bit Linux Mint 22.1
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dotck_mmcm_stub.v
// Design      : dotck_mmcm
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "dotck_mmcm,clk_wiz_v6_0_17_0_0,{component_name=dotck_mmcm,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=4,clkin1_period=8.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=false,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(dotck_20M, dotck_40M, dotck_60M, dotck_80M, 
  reset, sysclk)
/* synthesis syn_black_box black_box_pad_pin="reset,sysclk" */
/* synthesis syn_force_seq_prim="dotck_20M" */
/* synthesis syn_force_seq_prim="dotck_40M" */
/* synthesis syn_force_seq_prim="dotck_60M" */
/* synthesis syn_force_seq_prim="dotck_80M" */;
  output dotck_20M /* synthesis syn_isclock = 1 */;
  output dotck_40M /* synthesis syn_isclock = 1 */;
  output dotck_60M /* synthesis syn_isclock = 1 */;
  output dotck_80M /* synthesis syn_isclock = 1 */;
  input reset;
  input sysclk;
endmodule

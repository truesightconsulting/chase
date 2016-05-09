# # halo effect of goal seek
# source(paste(main.path,"opt_modelinput_halo.r",sep=""),local = T)

# calculate final result
curve$value_decomp=calc_decomp(curve$sp_current)
curve$value_npv=curve$value_decomp*curve$clv
if (ex.setup$optimization_type %in% c(3,5,9)) {
  curve$spend_start=curve$sp_plan
  curve$value_decomp_start=calc_decomp(curve$sp_plan)
  curve$value_npv_start=curve$value_decomp_start*curve$clv
}else{
  curve$spend_start=curve$sp_min
  curve$value_decomp_start=calc_decomp(curve$sp_min)
  curve$value_npv_start=curve$value_decomp_start*curve$clv
}


# summarize result
input_sp=c("sp_current","spend_start")
output_sp=c("spend","spend_start")
input_decomp=c("value_decomp","value_npv","value_decomp_start","value_npv_start")
output_decomp=c("decomp","value","decomp_start","value_start")

source(paste(main.path,"opt_modelinput_post_calc_agg.r",sep=""),local = T)

# format output
# new var 
metric_eff=c("eff1","eff1_start","eff2_start","eff2")
name_eff=c("CPA","Planned CPA","ROI","Planned ROI")
f_eff=c("spend/decomp","spend_start/decomp_start","value/spend","value_start/spend_start")

# existing var
metric_reg=c("spend","decomp","value","spend_start","decomp_start","value_start")
name_reg=c("Spend","Accounts","Value","Planned Spend","Planned Accounts","Planned Value")

# table column order 
order_all=c("spend","decomp","value","eff1","eff2","spend_start","decomp_start","value_start","eff1_start","eff2_start")
order_other=c("spend","spend_start","decomp","decomp_start","value","value_start","eff1","eff1_start","eff2","eff2_start")

# any columns to be dropped for all, excel and other tables; NAME HERE IS AFTER RENAMED!!!!!!!!!!!!!!!!!!!!!!!!!!
drop_all=c("all_name")
drop_excel=c()
drop_other=c()

source(paste(main.path,"opt_modelinput_post_calc_format.r",sep=""),local = T)
# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DATATYPE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HACT_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HBP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HFP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HSA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_DATA_LANE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PACK_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PIXEL_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VACT_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VBP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VFP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VSA" -parent ${Page_0}


}

proc update_PARAM_VALUE.DATATYPE { PARAM_VALUE.DATATYPE } {
	# Procedure called to update DATATYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATATYPE { PARAM_VALUE.DATATYPE } {
	# Procedure called to validate DATATYPE
	return true
}

proc update_PARAM_VALUE.HACT_CNT { PARAM_VALUE.HACT_CNT } {
	# Procedure called to update HACT_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HACT_CNT { PARAM_VALUE.HACT_CNT } {
	# Procedure called to validate HACT_CNT
	return true
}

proc update_PARAM_VALUE.HBP { PARAM_VALUE.HBP } {
	# Procedure called to update HBP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HBP { PARAM_VALUE.HBP } {
	# Procedure called to validate HBP
	return true
}

proc update_PARAM_VALUE.HFP { PARAM_VALUE.HFP } {
	# Procedure called to update HFP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HFP { PARAM_VALUE.HFP } {
	# Procedure called to validate HFP
	return true
}

proc update_PARAM_VALUE.HSA { PARAM_VALUE.HSA } {
	# Procedure called to update HSA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HSA { PARAM_VALUE.HSA } {
	# Procedure called to validate HSA
	return true
}

proc update_PARAM_VALUE.NUM_DATA_LANE { PARAM_VALUE.NUM_DATA_LANE } {
	# Procedure called to update NUM_DATA_LANE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_DATA_LANE { PARAM_VALUE.NUM_DATA_LANE } {
	# Procedure called to validate NUM_DATA_LANE
	return true
}

proc update_PARAM_VALUE.PACK_BIT { PARAM_VALUE.PACK_BIT } {
	# Procedure called to update PACK_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PACK_BIT { PARAM_VALUE.PACK_BIT } {
	# Procedure called to validate PACK_BIT
	return true
}

proc update_PARAM_VALUE.PIXEL_BIT { PARAM_VALUE.PIXEL_BIT } {
	# Procedure called to update PIXEL_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIXEL_BIT { PARAM_VALUE.PIXEL_BIT } {
	# Procedure called to validate PIXEL_BIT
	return true
}

proc update_PARAM_VALUE.VACT_CNT { PARAM_VALUE.VACT_CNT } {
	# Procedure called to update VACT_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VACT_CNT { PARAM_VALUE.VACT_CNT } {
	# Procedure called to validate VACT_CNT
	return true
}

proc update_PARAM_VALUE.VBP { PARAM_VALUE.VBP } {
	# Procedure called to update VBP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VBP { PARAM_VALUE.VBP } {
	# Procedure called to validate VBP
	return true
}

proc update_PARAM_VALUE.VFP { PARAM_VALUE.VFP } {
	# Procedure called to update VFP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VFP { PARAM_VALUE.VFP } {
	# Procedure called to validate VFP
	return true
}

proc update_PARAM_VALUE.VSA { PARAM_VALUE.VSA } {
	# Procedure called to update VSA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VSA { PARAM_VALUE.VSA } {
	# Procedure called to validate VSA
	return true
}


proc update_MODELPARAM_VALUE.NUM_DATA_LANE { MODELPARAM_VALUE.NUM_DATA_LANE PARAM_VALUE.NUM_DATA_LANE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_DATA_LANE}] ${MODELPARAM_VALUE.NUM_DATA_LANE}
}

proc update_MODELPARAM_VALUE.PIXEL_BIT { MODELPARAM_VALUE.PIXEL_BIT PARAM_VALUE.PIXEL_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIXEL_BIT}] ${MODELPARAM_VALUE.PIXEL_BIT}
}

proc update_MODELPARAM_VALUE.PACK_BIT { MODELPARAM_VALUE.PACK_BIT PARAM_VALUE.PACK_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PACK_BIT}] ${MODELPARAM_VALUE.PACK_BIT}
}

proc update_MODELPARAM_VALUE.HSA { MODELPARAM_VALUE.HSA PARAM_VALUE.HSA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HSA}] ${MODELPARAM_VALUE.HSA}
}

proc update_MODELPARAM_VALUE.HBP { MODELPARAM_VALUE.HBP PARAM_VALUE.HBP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HBP}] ${MODELPARAM_VALUE.HBP}
}

proc update_MODELPARAM_VALUE.HFP { MODELPARAM_VALUE.HFP PARAM_VALUE.HFP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HFP}] ${MODELPARAM_VALUE.HFP}
}

proc update_MODELPARAM_VALUE.HACT_CNT { MODELPARAM_VALUE.HACT_CNT PARAM_VALUE.HACT_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HACT_CNT}] ${MODELPARAM_VALUE.HACT_CNT}
}

proc update_MODELPARAM_VALUE.VSA { MODELPARAM_VALUE.VSA PARAM_VALUE.VSA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VSA}] ${MODELPARAM_VALUE.VSA}
}

proc update_MODELPARAM_VALUE.VBP { MODELPARAM_VALUE.VBP PARAM_VALUE.VBP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VBP}] ${MODELPARAM_VALUE.VBP}
}

proc update_MODELPARAM_VALUE.VFP { MODELPARAM_VALUE.VFP PARAM_VALUE.VFP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VFP}] ${MODELPARAM_VALUE.VFP}
}

proc update_MODELPARAM_VALUE.VACT_CNT { MODELPARAM_VALUE.VACT_CNT PARAM_VALUE.VACT_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VACT_CNT}] ${MODELPARAM_VALUE.VACT_CNT}
}

proc update_MODELPARAM_VALUE.DATATYPE { MODELPARAM_VALUE.DATATYPE PARAM_VALUE.DATATYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATATYPE}] ${MODELPARAM_VALUE.DATATYPE}
}


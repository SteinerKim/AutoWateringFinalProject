# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DIVIDE_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "POLARITY" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_DIVIDER" -parent ${Page_0}


}

proc update_PARAM_VALUE.DIVIDE_COUNT { PARAM_VALUE.DIVIDE_COUNT } {
	# Procedure called to update DIVIDE_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DIVIDE_COUNT { PARAM_VALUE.DIVIDE_COUNT } {
	# Procedure called to validate DIVIDE_COUNT
	return true
}

proc update_PARAM_VALUE.MAX_COUNT { PARAM_VALUE.MAX_COUNT } {
	# Procedure called to update MAX_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COUNT { PARAM_VALUE.MAX_COUNT } {
	# Procedure called to validate MAX_COUNT
	return true
}

proc update_PARAM_VALUE.POLARITY { PARAM_VALUE.POLARITY } {
	# Procedure called to update POLARITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.POLARITY { PARAM_VALUE.POLARITY } {
	# Procedure called to validate POLARITY
	return true
}

proc update_PARAM_VALUE.USE_DIVIDER { PARAM_VALUE.USE_DIVIDER } {
	# Procedure called to update USE_DIVIDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_DIVIDER { PARAM_VALUE.USE_DIVIDER } {
	# Procedure called to validate USE_DIVIDER
	return true
}


proc update_MODELPARAM_VALUE.USE_DIVIDER { MODELPARAM_VALUE.USE_DIVIDER PARAM_VALUE.USE_DIVIDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_DIVIDER}] ${MODELPARAM_VALUE.USE_DIVIDER}
}

proc update_MODELPARAM_VALUE.DIVIDE_COUNT { MODELPARAM_VALUE.DIVIDE_COUNT PARAM_VALUE.DIVIDE_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DIVIDE_COUNT}] ${MODELPARAM_VALUE.DIVIDE_COUNT}
}

proc update_MODELPARAM_VALUE.POLARITY { MODELPARAM_VALUE.POLARITY PARAM_VALUE.POLARITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.POLARITY}] ${MODELPARAM_VALUE.POLARITY}
}

proc update_MODELPARAM_VALUE.MAX_COUNT { MODELPARAM_VALUE.MAX_COUNT PARAM_VALUE.MAX_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COUNT}] ${MODELPARAM_VALUE.MAX_COUNT}
}


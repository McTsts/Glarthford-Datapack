# Set up to 4 values to player 0 on tbcAttackParamA - D
# Call shift to move them all one over
# Call unshift to move them one back
# Call reset to remove all
# Set X on tbcAttackParamX to <slot> and call select to get values on A-D on tbcAttackParamX of <slot>
# T on tbcAttackParamX is set to 1 until any other function in this folder than select is called; -1 if invalid access
# S on tbcAttackParamX can be set to 1/0 for a conditional action, and gets set to 0 on any call
# Shift saves one param more than neccessary for unshift
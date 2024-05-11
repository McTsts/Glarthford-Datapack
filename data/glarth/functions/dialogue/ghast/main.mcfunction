# Dialogue
schedule function glarth:dialogue/ghast/lines/generic 30

# Checked Beacon
execute if score quest Stats matches 8 run tag @a[distance=..5] add checkedBeacon

# Fight
function glarth:combat/start/default/ghast

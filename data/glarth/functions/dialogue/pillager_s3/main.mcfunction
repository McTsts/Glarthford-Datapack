# Cycle
function glarth:dialogue/pillager_s3/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/pillager_s3/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/pillager_s3/lines/day
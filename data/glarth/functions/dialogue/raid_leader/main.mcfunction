# Cycle
function glarth:dialogue/raid_leader/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/raid_leader/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/raid_leader/lines/day 30t
# Fight
function glarth:combat/start/boss/raid_leader
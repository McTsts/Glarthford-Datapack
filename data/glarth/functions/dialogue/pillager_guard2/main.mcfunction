# Cycle
function glarth:dialogue/pillager_guard2/cycle
# Dialogue
execute if score cycle Temp matches 0 unless entity @a[scores={iCrossbow=1..,iVindicatorSkull=1..,iBanner=1..}] run function glarth:dialogue/pillager_guard2/lines/night
execute if score cycle Temp matches 1 unless entity @a[scores={iCrossbow=1..,iVindicatorSkull=1..,iBanner=1..}] run function glarth:dialogue/pillager_guard2/lines/day
execute if entity @a[scores={iCrossbow=1..,iVindicatorSkull=1..,iBanner=1..}] run function glarth:dialogue/pillager_guard2/lines/generic2
# Trades
function glarth:dialogue/pillager_guard2/trades/all

# Checked Beacon
execute if score quest Stats matches 9 run tag @a[distance=..5] add checkedBeacon
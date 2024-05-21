# give all in other cases
$execute if score thiefItem Temp matches 0 run loot replace block ~ ~ ~ container.$(slot) loot glarth:give/potions/time
# when talking to thief
$execute if score thiefItem Temp matches 1 run loot replace block ~ ~ ~ container.$(slot) loot glarth:give/potions/time
$execute if score thiefItem Temp matches 2 run loot replace block ~ ~ ~ container.$(slot) loot glarth:give/potions/progression
$execute if score thiefItem Temp matches 3 run loot replace block ~ ~ ~ container.$(slot) loot glarth:give/potions/storm
$execute if score thiefItem Temp matches 4 run loot replace block ~ ~ ~ container.$(slot) loot glarth:give/brewery_breakin_plan
# reset
scoreboard players set thiefItem Temp 0
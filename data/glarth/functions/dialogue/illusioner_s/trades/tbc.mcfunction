# Train Bow
execute if score combat Stats matches 0 if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"illusioner_s.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 152"}}]
execute if score combat Stats matches 0 if entity @s[tag=!a] as @a[tag=!tip23,distance=..5] run function glarth:mechanic/tip/23

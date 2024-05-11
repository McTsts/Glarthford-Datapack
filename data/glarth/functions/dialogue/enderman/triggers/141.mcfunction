#141 Enderman | Kill using Diamond Sword
function glarth:dialogue/enderman/lines/trade2
execute at @e[tag=enderman,type=armor_stand] run particle portal ~ ~ ~ 0.4 0.4 0.4 0.01 1000
execute at @e[tag=enderman,type=armor_stand] run particle portal ~ ~ ~ 0.4 0.4 0.4 1 10
execute at @e[tag=enderman,type=armor_stand] run playsound minecraft:entity.endermen.death hostile @a ~ ~ ~ 100 1
execute at @e[tag=enderman,type=armor_stand] run summon minecraft:item ~ ~1 ~ {Item:{id:"ender_pearl",count:1}}
tag @e[tag=enderman,type=armor_stand] add b
kill @e[tag=enderman,type=armor_stand] 
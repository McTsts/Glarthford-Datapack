replaceitem entity @e[tag=charQ4] armor.head air
scoreboard players add @s tbcAttackStage 1
scoreboard players set @s tbcAttackTimer 0
scoreboard players set @s tbcAttackTimerX 0
scoreboard players set dodge tbcStats 0
scoreboard players set damage tbcStats 0
scoreboard players set blindness tbcStats 0
scoreboard players set bee tbcStats 0
scoreboard players set freeze tbcStats 0
scoreboard players set fire tbcStats 0
scoreboard players set stun tbcStats 0
scoreboard players set poison tbcStats 0
execute as @e[tag=tbcEnemy,type=armor_stand] run function glarth:combat/set_loc
execute as @e[tag=tbcSelPlayerAS] run function glarth:combat/set_loc
function glarth:combat/done

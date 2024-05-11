scoreboard players set @s tbcAttack 1
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.ally.1","bold":true}]}]

scoreboard players set @a tbcStamina 11
function glarth:combat/attack_init
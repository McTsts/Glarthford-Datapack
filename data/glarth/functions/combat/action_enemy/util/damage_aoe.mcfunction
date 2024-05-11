tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.aoe2"}]

function glarth:combat/action_enemy/util/target1
execute as @a[tag=tbcTarget,gamemode=adventure] run function glarth:combat/action_enemy/util/damage
function glarth:combat/action_enemy/util/target2
execute as @a[tag=tbcTarget,gamemode=adventure] run function glarth:combat/action_enemy/util/damage
function glarth:combat/action_enemy/util/target3
execute as @a[tag=tbcTarget,gamemode=adventure] run function glarth:combat/action_enemy/util/damage

function glarth:combat/action_enemy/util/targeta
execute as @e[tag=tbcTarget,type=armor_stand] run function glarth:combat/action_enemy/util/damage

function glarth:combat/action_enemy/util/get_target
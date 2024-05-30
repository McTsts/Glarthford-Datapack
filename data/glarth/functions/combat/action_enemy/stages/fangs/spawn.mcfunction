execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
summon minecraft:armor_stand ^ ^ ^1 {Small:1,Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcFang","tbcFangN"]}
tp @e[tag=tbcFangN,type=armor_stand] ^ ^ ^ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
tag @e[tag=tbcFangN,type=armor_stand] remove tbcFangN
function glarth:combat/action_enemy/util/next_stage
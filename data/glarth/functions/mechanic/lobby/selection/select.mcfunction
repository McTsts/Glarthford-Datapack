scoreboard players reset * lobbySelection
scoreboard players set @s lobbySelection 1
scoreboard players set active lobbySelection 1

summon minecraft:armor_stand 163.0 25.0 -131.0 {DisabledSlots:4144959,Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ1"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ2"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ3"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ4"],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["lobby","charQB","charQBx"],CustomNameVisible:1,CustomName:'""'}
summon minecraft:armor_stand 160.75 25.0 -131.0 {DisabledSlots:4144959,Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ1"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ2"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ3"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ4"],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["lobby","charQB","charQB"]}
summon minecraft:armor_stand 165.25 25.0 -131.0 {DisabledSlots:4144959,Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ1"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ2"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ3"]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["lobby","charQ","charQ4"],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["lobby","charQB","charQB"],Rotation:[180.0f,0.0f]}
summon minecraft:armor_stand 160 25.0 -130 {DisabledSlots:4144959,Tags:["lobby","charQS"],Rotation:[0.0f,0.0f]}
summon minecraft:armor_stand 160 25.425 -130 {DisabledSlots:4144959,Tags:["lobby","charQSname"],Rotation:[0.0f,0.0f],CustomNameVisible:1,Marker:1,CustomName:'{"text":"Spouse","font":"custom:small"}'}

summon minecraft:armor_stand 163.0 27.3 -131.0 {Radius:0.0f,Duration:2147483647,Tags:["lobby","selNameAll"],CustomName:'""',CustomNameVisible:1,Marker:1}

loot replace entity @e[type=armor_stand,tag=charQ4,tag=lobby] armor.head loot glarth:custom/skull
execute as @e[tag=charQ4,tag=lobby,type=armor_stand] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute as @e[tag=charQ4,tag=lobby,type=armor_stand] run data remove entity @s ArmorItems[3]

data merge block 84 26 -123 {front_text:{messages:['["",{"translate":"lobby.selection.aka","with":[{"entity":"@p[scores={lobbySelection=1}]","nbt":"EnderItems[{Slot:1b}].tag.name","interpret":true,"color":"gray"},{"entity":"@p[scores={lobbySelection=1}]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}]}]']}}
data modify entity @e[type=armor_stand,limit=1,tag=charQBx,tag=lobby] CustomName set from block 84 26 -123 front_text.messages[0]

fill 164 24 -129 164 26 -129 minecraft:acacia_wall_sign[facing=south]
fill 161 24 -129 161 26 -129 minecraft:acacia_wall_sign[facing=south]
fill 168 25 -129 166 25 -129 minecraft:acacia_wall_sign[facing=south]
fill 157 25 -129 159 25 -129 minecraft:acacia_wall_sign[facing=south]
setblock 165 24 -129 minecraft:acacia_wall_sign[facing=south]

function glarth:mechanic/lobby/selection/set_signs

scoreboard players set charBase charSelection 40
scoreboard players set charBody charSelection 6
scoreboard players set charHead charSelection 9
scoreboard players set charHeadColor charSelection 3
scoreboard players set charBodyColor charSelection 3
scoreboard players set charType charSelection 3
scoreboard players set charSpouse charSelection 2

function glarth:mechanic/lobby/selection/find_cape

function glarth:mechanic/lobby/selection/update

scoreboard players set @s unlockQ0 1

scoreboard players operation @s charSpouseP4 = @s charSpouse
scoreboard players operation @s charTypeP4 = @s charType
scoreboard players operation @s charBaseP4 = @s charBase
scoreboard players operation @s charBodyRealP4 = @s charBodyReal
scoreboard players operation @s charHeadRealP4 = @s charHeadReal

scoreboard players operation @s charType = @s charTypeP1
scoreboard players operation @s charBase = @s charBaseP1
scoreboard players operation @s charBodyReal = @s charBodyRealP1
scoreboard players operation @s charHeadReal = @s charHeadRealP1
execute positioned 166 25 -129 run function glarth:mechanic/lobby/selection/make_name_mini
execute positioned 166 25 -129 run data modify block ~ ~ ~ front_text.messages[1] set from block 84 26 -123 front_text.messages[0]
execute positioned 166 25 -129 run data modify block ~ ~ ~ front_text.messages[2] set from block 84 26 -123 front_text.messages[1]

scoreboard players operation @s charType = @s charTypeP2
scoreboard players operation @s charBase = @s charBaseP2
scoreboard players operation @s charBodyReal = @s charBodyRealP2
scoreboard players operation @s charHeadReal = @s charHeadRealP2
execute positioned 167 25 -129 run function glarth:mechanic/lobby/selection/make_name_mini
execute positioned 167 25 -129 run data modify block ~ ~ ~ front_text.messages[1] set from block 84 26 -123 front_text.messages[0]
execute positioned 167 25 -129 run data modify block ~ ~ ~ front_text.messages[2] set from block 84 26 -123 front_text.messages[1]

scoreboard players operation @s charType = @s charTypeP3
scoreboard players operation @s charBase = @s charBaseP3
scoreboard players operation @s charBodyReal = @s charBodyRealP3
scoreboard players operation @s charHeadReal = @s charHeadRealP3
execute positioned 168 25 -129 run function glarth:mechanic/lobby/selection/make_name_mini
execute positioned 168 25 -129 run data modify block ~ ~ ~ front_text.messages[1] set from block 84 26 -123 front_text.messages[0]
execute positioned 168 25 -129 run data modify block ~ ~ ~ front_text.messages[2] set from block 84 26 -123 front_text.messages[1]

scoreboard players operation @s charType = @s charTypeP4
scoreboard players operation @s charBase = @s charBaseP4
scoreboard players operation @s charBodyReal = @s charBodyRealP4
scoreboard players operation @s charHeadReal = @s charHeadRealP4
scoreboard players operation @s charSpouse = @s charHeadSpouseP4


#execute unless entity @s[tag=capeChecked] run effect give @a minecraft:slowness 500 120 true
#execute unless entity @s[tag=capeChecked] run effect give @a minecraft:blindness 500 120 true
#execute unless entity @s[tag=capeChecked] run title @a times 10 100 10
#execute unless entity @s[tag=capeChecked] run title @a title {"translate":"loading","italic":true}
#execute unless entity @s[tag=capeChecked] run title @a subtitle {"translate":"loading.st","italic":true}
execute unless entity @s[tag=capeChecked] run scoreboard players reset * cape_check.res
execute unless entity @s[tag=capeChecked] run function application_cape:call
tag @s add capeChecked

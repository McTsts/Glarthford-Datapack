#35 Mourner | Totem to Chaos Staff
function glarth:dialogue/mourner/lines/trade1
clear @s totem_of_undying 1 
function glarth:mechanic/staff/get_chaos
tag @e[tag=mourner,type=armor_stand] add a

clear @a player_head[custom_data={isDogSkull:1}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{isDogSkull:1}}}}]
setblock -82 25 -208 chest[facing=north,type=right]
setblock -83 25 -208 chest[facing=north,type=left]
summon minecraft:wolf -81.01 27.00 -208.65 {Tame:1,Invulnerable:1,NoAI:1,Tags:["mournerWolf","newAnimal"],Sitting:1b,Rotation:[35.0f,0.0f]}
scoreboard players operation @e[tag=newAnimal] netherID = id edgeI
tag @e[tag=newAnimal] remove newAnimal
particle minecraft:totem_of_undying -81.01 27.50 -208.65 0.2 0.2 0.2 0.5 10
particle minecraft:totem_of_undying -81.01 27.50 -208.65 0.2 0.2 0.2 0.2 40
playsound minecraft:item.totem.use neutral @a ~ ~ ~ 1 1
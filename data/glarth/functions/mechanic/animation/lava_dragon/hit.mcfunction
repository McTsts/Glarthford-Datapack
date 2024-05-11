stopsound @s * minecraft:lava_dragon_roar1
stopsound @s * minecraft:lava_dragon_roar2
playsound minecraft:lava_dragon_roar1 hostile @a ~ ~ ~ 0.1 2.0 0.05
playsound minecraft:lava_dragon_roar1 hostile @a ~ ~ ~ 0.1 1.5 0.05
playsound minecraft:lava_dragon_roar1 hostile @a ~ ~ ~ 0.1 1.0 0.05
playsound minecraft:lava_dragon_roar2 hostile @a ~ ~ ~ 0.1 2.0 0.05
playsound minecraft:lava_dragon_roar2 hostile @a ~ ~ ~ 0.1 1.5 0.05
playsound minecraft:lava_dragon_roar2 hostile @a ~ ~ ~ 0.1 1.0 0.05
scoreboard players set @s lavaDragonSound 200
particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0.5 50
particle lava ~ ~1.5 ~ 0.3 0.3 0.3 0.5 20
execute unless entity @p[gamemode=adventure,scores={bpBow=100000..}] run scoreboard players set @p[gamemode=adventure] bpBow 100000

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["newBP"]}
execute as @e[tag=newBP] at @s store result score @s bpX run data get entity @s Pos[0] 100
execute as @e[tag=newBP] at @s store result score @s bpY run data get entity @s Pos[1] 100
execute as @e[tag=newBP] at @s store result score @s bpZ run data get entity @s Pos[2] 100
execute as @e[tag=newBP] at @s facing entity @p[gamemode=adventure,scores={bpBow=100000..}] eyes positioned ^ ^ ^1 run tp @s ~ ~ ~
execute as @e[tag=newBP] at @s store result score @s bpX2 run data get entity @s Pos[0] 100
execute as @e[tag=newBP] at @s store result score @s bpY2 run data get entity @s Pos[1] 100
execute as @e[tag=newBP] at @s store result score @s bpZ2 run data get entity @s Pos[2] 100
execute as @e[tag=newBP] run scoreboard players operation @s bpX2 -= @s bpX
execute as @e[tag=newBP] run scoreboard players operation @s bpY2 -= @s bpY
execute as @e[tag=newBP] run scoreboard players operation @s bpZ2 -= @s bpZ
execute as @e[tag=newBP] run scoreboard players operation x utilItem = @s bpX2
execute as @e[tag=newBP] run scoreboard players operation y utilItem = @s bpY2
execute as @e[tag=newBP] run scoreboard players operation z utilItem = @s bpZ2
scoreboard players operation x utilItem /= 20 Const
scoreboard players operation y utilItem /= 20 Const
scoreboard players operation z utilItem /= 20 Const
scoreboard players add x utilItem 5
scoreboard players add y utilItem 5
scoreboard players add z utilItem 5
kill @e[tag=bpItem]
function glarth:util/item
data merge entity @e[tag=newUtilItem,limit=1] {Item:{id:"blaze_powder",count:1},Glowing:1,Thrower:[I;0,0,0,0]}
tag @e[tag=newUtilItem,limit=1] add bpItem
schedule clear glarth:mechanic/animation/lava_dragon/hit_delayed
schedule clear glarth:mechanic/animation/lava_dragon/hit_delayed2
schedule function glarth:mechanic/animation/lava_dragon/hit_delayed 30t
schedule function glarth:mechanic/animation/lava_dragon/hit_delayed2 100t
team join gold @e[tag=newUtilItem,limit=1]
tag @e[type=item] remove newUtilItem

kill @e[type=arrow,distance=..2.5]

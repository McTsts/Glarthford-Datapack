# dim end 
function glarth:mechanic/dim_end/main

execute as @e[tag=ender_boss,type=zombie] run function glarth:combat/boss_pve/priest/main
#Arena & Portal
execute if score endStarted Stats matches 0 if block 2 27 -334 minecraft:end_portal_frame[facing=south,eye=true] run function glarth:mechanic/quest/endtp
execute if score endStarted Stats matches 1 as @a[x=2,y=27,z=-336,distance=..2] at @s if block ~ ~ ~ minecraft:iron_trapdoor run scoreboard players set @s dimension 1
execute if score endStarted Stats matches 1 as @a[x=2,y=27,z=-336,distance=..2] at @s if block ~ ~ ~ minecraft:iron_trapdoor run scoreboard players set @s MusicSet 33
execute if score endStarted Stats matches 1 as @a[x=2,y=27,z=-336,distance=..2] at @s if block ~ ~ ~ minecraft:iron_trapdoor run stopsound @s * time
execute if score endStarted Stats matches 1 as @a[x=2,y=27,z=-336,distance=..2] at @s if block ~ ~ ~ minecraft:iron_trapdoor run tp @s 9 61.5 -515 90 0
execute if score endStarted Stats matches 0 as @a[x=2,y=18,z=-336,distance=..7,gamemode=adventure] run function glarth:mechanic/quest/end_portal
#Ender Pearl
execute as @a[tag=giveEnder] run give @s ender_pearl
execute as @a[tag=giveEnder] run tag @s remove giveEnder
execute as @a[scores={ender=1..}] run kill @e[type=ender_pearl]
execute as @a[scores={ender=1..}] run tag @s add giveEnder
execute as @a[scores={ender=1..}] run scoreboard players reset @s ender
#End Crystal
execute as @a[x=196,y=27,z=-248,distance=..7] unless entity @e[tag=eSpawned,type=area_effect_cloud] run summon minecraft:end_crystal 226 37 -258 {ShowBottom:0b,BeamTarget:{X:219,Y:27,Z:-248}}
execute as @a[x=196,y=27,z=-248,distance=..7] run tag @e[tag=events,type=area_effect_cloud] add eSpawned
#Snowflake
execute unless score lowGraphics Stats matches 1 if entity @a[x=7,y=25,z=-302,distance=..30] if score delay tps matches 0 run function glarth:mechanic/animation/snowflake
execute unless score lowGraphics Stats matches 1 as @e[tag=snowflake,type=armor_stand] at @s unless block ~ ~-1 ~ air run kill @s
execute unless score lowGraphics Stats matches 1 as @e[tag=snowflake,type=armor_stand] at @s positioned ~ ~-1 ~ if entity @e[type=shulker,distance=..1] run kill @s



# arrow
function glarth:mechanic/dim_end/chorus/main
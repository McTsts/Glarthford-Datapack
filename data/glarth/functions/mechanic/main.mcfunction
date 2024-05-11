#Specific Randomized
execute as @a unless score @s trigger matches 0 at @s run function glarth:mechanic/trigger
execute as @a if score @s trigger matches 0 at @s run scoreboard players enable @s trigger
execute as @r[scores={sign=1..}] run function glarth:mechanic/sign
execute as @e[sort=random,limit=1,tag=DR,type=area_effect_cloud] run function glarth:mechanic/door
execute if score game Stats matches 0 run function glarth:mechanic/lobby/mechanic
execute if score game Stats matches 0 positioned 182 23 -112 if entity @e[type=player,distance=..10] unless entity @e[tag=quest_name] run function glarth:mechanic/lobby/setup
# Can be moved to game when done with testing
#Game
execute if score running winter matches 1 run function glarth:mechanic/seasons/main_multi
execute if score game Stats matches 1 run function glarth:mechanic/game
#Tnt
execute as @e[type=tnt] run tag @s[nbt={Fuse:1s}] add tnt
execute as @e[tag=tnt,type=tnt] at @s run summon creeper ~ ~-2 ~ {Fuse:0}
kill @e[tag=tnt,type=tnt]
# Falling Block
scoreboard players add @e[tag=falling_block_kill,type=falling_block] Temp 1
kill @e[tag=falling_block_kill,scores={Temp=20..},type=falling_block]
kill @e[tag=falling_block_kill,tag=fbk2,scores={Temp=10..},type=falling_block]
#End Scene
execute unless score quest Stats matches 4 if score timer end matches 0..1000 run function glarth:mechanic/end_scene
execute if score quest Stats matches 4 if score timer end matches 0..20000 run function glarth:mechanic/end_scene
# Bee Hives
execute as @e[tag=beeHiveSlime,type=slime] unless entity @s[nbt={HurtTime:0s}] run function glarth:mechanic/drop_bee_hive
execute as @e[tag=leadSlime,type=slime] unless entity @s[nbt={HurtTime:0s}] run function glarth:mechanic/drop_lead

# Inv Update
execute as @a[tag=inv_update] run function glarth:mechanic/inv_update2
scoreboard players reset @a invM1
scoreboard players reset @a invM2
scoreboard players reset @a invM3
scoreboard players reset @a invM4
scoreboard players reset @a invM5
scoreboard players reset @a invM6
scoreboard players reset @a invM7
scoreboard players reset @a invM8
scoreboard players reset @a invM9
scoreboard players reset @a invM10
scoreboard players reset @a invM11


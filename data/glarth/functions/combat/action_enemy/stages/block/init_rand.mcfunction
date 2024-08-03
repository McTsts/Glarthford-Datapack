# spawn random amount of blocks from min to max
execute at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
$function glarth:util/rand_tbc_min_max {min:$(min),max:$(max)}
$execute if score n Random matches 1.. positioned ^ ^-2.00 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 2.. positioned ^ ^-1.38 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 3.. positioned ^ ^-0.76 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 4.. positioned ^ ^-0.14 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 5.. positioned ^ ^0.480 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 6.. positioned ^ ^1.100 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 7.. positioned ^ ^1.720 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
$execute if score n Random matches 8.. positioned ^ ^2.34 ^2.7 run function glarth:combat/action_enemy/stages/block/create_block {id:"$(id)",color:"$(color)"}
execute as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~

# skip appropriate amount of phases
$scoreboard players set stageCalcBlockMax Temp $(max_func)
scoreboard players operation stageCalcBlockMax Temp -= n Random
scoreboard players operation stageCalcBlockMax Temp *= 3 Const
scoreboard players add stageCalcBlockMax Temp 2

# skip ((maxBlocks - spawnedBlocks) * 3 + 2 phases
# with min=1, max=3, in cases 1, 2, 3 this leads to 8/5/2 skips
scoreboard players operation @s tbcAttackStage += stageCalcBlockMax Temp
# sound
execute at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5

# get barrage count
$function glarth:util/rand_tbc_min_max {min:$(min),max:$(max)}

$execute if score n Random matches 1 as @e[tag=tbcTargetAS,type=armor_stand] at @s run function glarth:combat/action_enemy/stages/barrage/internal/spawn_$(positions)_1 {item:"$(item)",color:"$(color)"}
$execute if score n Random matches 2 as @e[tag=tbcTargetAS,type=armor_stand] at @s run function glarth:combat/action_enemy/stages/barrage/internal/spawn_$(positions)_2 {item:"$(item)",color:"$(color)"}
$execute if score n Random matches 3 as @e[tag=tbcTargetAS,type=armor_stand] at @s run function glarth:combat/action_enemy/stages/barrage/internal/spawn_$(positions)_3 {item:"$(item)",color:"$(color)"}
$execute if score n Random matches 4 as @e[tag=tbcTargetAS,type=armor_stand] at @s run function glarth:combat/action_enemy/stages/barrage/internal/spawn_$(positions)_4 {item:"$(item)",color:"$(color)"}

# bone prep
execute if entity @s[tag=tbcZombieGhost] run team join aqua @e[tag=tbcBone]
execute as @e[tag=tbcBone,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~

# select bones randomy
tag @e[type=armor_stand,tag=tbcBone] add rand_sel
$function glarth:util/rand_sel/$(max)

# skip phase
$scoreboard players set stageCalcBarrageMax Temp $(max)
$scoreboard players set stageCalcBarrageMin Temp $(min)
scoreboard players operation stageCalcBarrageMax Temp -= n Random
scoreboard players operation stageCalcBarrageMax Temp *= 2 Const
scoreboard players add stageCalcBarrageMax Temp 1

# skip ((maxBones - spawnedBones) * 2 + 1 phases
# with min=2, max=4, in cases 2, 3, 4 this leads to 5/3/1 skips
scoreboard players operation @s tbcAttackStage += stageCalcBarrageMax Temp
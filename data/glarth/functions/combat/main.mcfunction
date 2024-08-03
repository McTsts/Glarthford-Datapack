execute as @e[tag=tbcEnemy,scores={tbcHealth=..0}] run function glarth:combat/die_enemy
execute as @e[tag=tbcAlly,scores={tbcHealth=..0}] run function glarth:combat/die_ally

execute as @a[tag=inTBC] run function glarth:combat/menu
execute as @e[tag=tbcTurn] run function glarth:combat/turn
execute unless score start tbcStats matches ..3 unless entity @e[tag=tbcTurn] run function glarth:combat/next

execute if entity @e[tag=tbc] run scoreboard players add timer tbcStats 1
execute if score timer tbcStats matches 1 run effect clear @a[tag=tbcRemoveHB] health_boost
execute if score timer tbcStats matches 1 run tag @a[tag=tbcRemoveHB] remove tbcRemoveHB
execute if score timer tbcStats matches 20 run function glarth:combat/update

execute if score lobbyTBC Stats matches 1 run scoreboard players set tbcUnlocked Stats 3

execute as @a[scores={playerid=1},gamemode=adventure,tag=inTBC] at @s unless entity @e[tag=tbcMarkerPov1,distance=..0.01] at @e[tag=tbcMarkerPov1,limit=1] run tp @s ~ ~ ~ facing entity @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud]
execute as @a[scores={playerid=2},gamemode=adventure,tag=inTBC] at @s unless entity @e[tag=tbcMarkerPov2,distance=..0.01] at @e[tag=tbcMarkerPov2,limit=1] run tp @s ~ ~ ~ facing entity @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud]
execute as @a[scores={playerid=3},gamemode=adventure,tag=inTBC] at @s unless entity @e[tag=tbcMarkerPov3,distance=..0.01] at @e[tag=tbcMarkerPov3,limit=1] run tp @s ~ ~ ~ facing entity @e[tag=tbcMarkerMiddle,limit=1,type=area_effect_cloud]

execute as @e[tag=charQB,type=armor_stand] at @s run data modify entity @e[tag=charQ,distance=..2,sort=random,limit=1,type=armor_stand] Rotation set from entity @s Rotation
execute as @e[tag=charQEB,type=armor_stand] at @s run data modify entity @e[tag=charQEall,distance=..2,sort=random,limit=1,type=armor_stand] Rotation set from entity @s Rotation
execute as @e[tag=charQAB,type=armor_stand] at @s run data modify entity @e[tag=charQAall,distance=..2,sort=random,limit=1,type=armor_stand] Rotation set from entity @s Rotation


# Animate Characters
execute as @e[tag=tbcEnemy,type=armor_stand,tag=!tbcNoAnim] run function glarth:mechanic/char/animated
execute as @e[tag=tbcAlly,type=armor_stand,tag=!tbcNoAnim] run function glarth:mechanic/char/animated

# Phanterra
execute if score doPhanterra tbcStats matches 1 run function glarth:mechanic/animation/phanterra/main

# Laser
execute if score doLaser tbcStats matches 1 as @e[tag=tbcEndCrystalShield] at @s run function glarth:combat/laser

# Crouch Zoom
effect give @a[scores={tbcCrouch=1..},tag=inTBC,gamemode=adventure] slowness 1 120 true
effect clear @a[scores={tbcCrouch=0},tag=inTBC,gamemode=adventure] slowness
scoreboard players set @a tbcCrouch 0

# Fire
execute as @e[scores={tbcFire=1..},type=armor_stand] at @s run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcFire=1..,playerid=1}] at @e[tag=tbcPlayerAS1,type=armor_stand] run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcFire=1..,playerid=2}] at @e[tag=tbcPlayerAS2,type=armor_stand] run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcFire=1..,playerid=3}] at @e[tag=tbcPlayerAS3,type=armor_stand] run particle minecraft:flame ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
# Stunned
scoreboard players add @e[tag=tbcEnemy,type=armor_stand] tbcStun 0
execute as @e[scores={tbcStun=1..},tag=!stunned,type=armor_stand] run data merge entity @s {Pose:{Head:[-70.0f,0.0f,0.0f]}}
execute as @e[scores={tbcStun=1..},tag=!stunned,type=armor_stand] at @s run function glarth:combat/selection
execute as @e[scores={tbcStun=1..},tag=!stunned,type=armor_stand] at @s run tp @s ~ ~-0.7 ~
execute as @e[scores={tbcStun=..0},tag=stunned,type=armor_stand] run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute as @e[scores={tbcStun=..0},tag=stunned,type=armor_stand] at @s run function glarth:combat/selection
execute as @e[scores={tbcStun=..0},tag=stunned,type=armor_stand] at @s run tp @s ~ ~0.7 ~
tag @e[scores={tbcStun=1..}] add stunned
tag @e[scores={tbcStun=..0}] remove stunned
# Poisoned
effect give @a[scores={tbcPoison=1..}] poison 1 0 true
execute as @e[scores={tbcPoison=1..},type=armor_stand] at @s run particle minecraft:witch ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcPoison=1..,playerid=1}] at @e[tag=tbcPlayerAS1,type=armor_stand] run particle minecraft:witch ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcPoison=1..,playerid=2}] at @e[tag=tbcPlayerAS2,type=armor_stand] run particle minecraft:witch ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcPoison=1..,playerid=3}] at @e[tag=tbcPlayerAS3,type=armor_stand] run particle minecraft:witch ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
# Withered
effect give @a[scores={tbcWither=1..}] wither 1 0 true
execute as @e[scores={tbcWither=1..},type=armor_stand] at @s run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcWither=1..,playerid=1}] at @e[tag=tbcPlayerAS1,type=armor_stand] run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcWither=1..,playerid=2}] at @e[tag=tbcPlayerAS2,type=armor_stand] run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcWither=1..,playerid=3}] at @e[tag=tbcPlayerAS3,type=armor_stand] run particle minecraft:smoke ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
# Infected
effect give @a[scores={tbcInfection=1..}] hunger 1 0 true
execute as @e[scores={tbcInfection=1..},type=armor_stand] at @s run particle minecraft:spit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcInfection=1..,playerid=1}] at @e[tag=tbcPlayerAS1,type=armor_stand] run particle minecraft:spit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcInfection=1..,playerid=2}] at @e[tag=tbcPlayerAS2,type=armor_stand] run particle minecraft:spit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcInfection=1..,playerid=3}] at @e[tag=tbcPlayerAS3,type=armor_stand] run particle minecraft:spit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
# Frozen
execute as @e[scores={tbcFreeze=0..},type=armor_stand] at @s run particle minecraft:block{block_state:{Name:"ice"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 3
execute as @a[scores={tbcFreeze=0..,playerid=1}] at @e[tag=tbcPlayerAS1,type=armor_stand] run particle minecraft:block{block_state:{Name:"ice"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcFreeze=0..,playerid=2}] at @e[tag=tbcPlayerAS2,type=armor_stand] run particle minecraft:block{block_state:{Name:"ice"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
execute as @a[scores={tbcFreeze=0..,playerid=3}] at @e[tag=tbcPlayerAS3,type=armor_stand] run particle minecraft:block{block_state:{Name:"ice"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 1
# Blindness
effect give @a[scores={tbcBlindness=1..}] blindness 2 0 true
execute as @e[scores={tbcBlindness=1..},type=armor_stand] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.01 1
execute as @a[scores={tbcBlindness=1..,playerid=1}] at @e[tag=tbcPlayerAS1,type=armor_stand] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.01 1
execute as @a[scores={tbcBlindness=1..,playerid=2}] at @e[tag=tbcPlayerAS2,type=armor_stand] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.01 1
execute as @a[scores={tbcBlindness=1..,playerid=3}] at @e[tag=tbcPlayerAS3,type=armor_stand] run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.01 1
# Bee
execute as @e[tag=tbcEnemy,scores={tbcBee=1..},type=armor_stand] at @s run function glarth:combat/bee
# Pumpkin
item replace entity @a[scores={tbcPumpkin=1..}] armor.head with minecraft:carved_pumpkin[custom_name='""',enchantments={levels:{binding_curse:1},show_in_tooltip:0b},custom_model_data=1,hide_additional_tooltip={}]

# Health Bar
execute as @e[tag=tbcEnemy,tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall,type=armor_stand] at @s positioned ~ ~1.7 ~ if entity @e[tag=tbcHealthBar,distance=..0.35] run function glarth:combat/health_bar
execute as @e[tag=tbcEnemy,tag=tbcEnemyTall,type=armor_stand] at @s positioned ~ ~2.9 ~ if entity @e[tag=tbcHealthBar,distance=..0.35] run function glarth:combat/health_bar
execute as @e[tag=tbcEnemy,tag=tbcEnemyVeryTall,type=armor_stand] at @s positioned ~ ~4.9 ~ if entity @e[tag=tbcHealthBar,distance=..0.35] run function glarth:combat/health_bar
execute as @e[tag=tbcAlly,type=armor_stand] at @s positioned ~ ~1.7 ~ if entity @e[tag=tbcHealthBar,distance=..0.35] run function glarth:combat/health_bar
execute as @e[tag=tbcHealthBar,tag=!tbcTallHealth,tag=!tbcVeryTallHealth] at @s positioned ~ ~-1.7 ~ unless entity @e[tag=tbcHBEntity,distance=..0.35,type=armor_stand,tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall] run data merge entity @s {CustomName:'""',CustomNameVisible:0}
execute as @e[tag=tbcHealthBar,tag=tbcTallHealth] at @s positioned ~ ~-2.9 ~ unless entity @e[tag=tbcHBEntity,distance=..0.35,type=armor_stand,tag=tbcEnemyTall] run data merge entity @s {CustomName:'""',CustomNameVisible:0}
execute as @e[tag=tbcHealthBar,tag=tbcVeryTallHealth] at @s positioned ~ ~-4.9 ~ unless entity @e[tag=tbcHBEntity,distance=..0.35,type=armor_stand,tag=tbcEnemyVeryTall] run data merge entity @s {CustomName:'""',CustomNameVisible:0}
execute as @e[tag=tbcHealthBar2,tag=!tbcTallHealth,tag=!tbcVeryTallHealth] at @s positioned ~ ~-1.4 ~ unless entity @e[tag=tbcHBEntity,distance=..0.35,type=armor_stand,tag=!tbcEnemyTall,tag=!tbcEnemyVeryTall] run data merge entity @s {CustomName:'""',CustomNameVisible:0}
execute as @e[tag=tbcHealthBar2,tag=tbcTallHealth] at @s positioned ~ ~-2.6 ~ unless entity @e[tag=tbcHBEntity,distance=..0.35,type=armor_stand,tag=tbcEnemyTall] run data merge entity @s {CustomName:'""',CustomNameVisible:0}
execute as @e[tag=tbcHealthBar2,tag=tbcVeryTallHealth] at @s positioned ~ ~-4.6 ~ unless entity @e[tag=tbcHBEntity,distance=..0.35,type=armor_stand,tag=tbcEnemyVeryTall] run data merge entity @s {CustomName:'""',CustomNameVisible:0}

# TBC VA (1.17)
execute if score tbcVa tbcStats matches 1.. run scoreboard players remove tbcVa tbcStats 1
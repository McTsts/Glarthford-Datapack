function glarth:combat/reset
gamerule showDeathMessages false
tag @a[gamemode=adventure] add inTBC
tag @a[gamemode=adventure] add tbcAttackable
scoreboard players set @a[tag=inTBC] tbcSpeed 8
execute as @a[tag=inTBC] run scoreboard players operation @s tbcQueue = @s playerid
execute if score lobbyTBC Stats matches 2 run scoreboard players add @a[tag=inTBC] tbcQueue 10
scoreboard players set TBC Stats 1
scoreboard players set @a[tag=inTBC] tbcMenu -1
scoreboard players set @a[tag=inTBC] tbcMenuX -1
effect clear @a[tag=inTBC] minecraft:regeneration
effect clear @a[tag=inTBC] minecraft:resistance
effect clear @a[tag=inTBC] minecraft:saturation
effect clear @a[tag=inTBC] minecraft:blindness
effect clear @a[tag=inTBC] minecraft:nausea
effect clear @a[tag=inTBC] minecraft:poison
effect clear @a[tag=inTBC] minecraft:dolphins_grace
effect clear @a[tag=inTBC] minecraft:water_breathing
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.white

scoreboard players reset * tbcPoison
scoreboard players set @a tbcPoison 0
scoreboard players set @a tbcCompanionI 1

stopsound @a * time

scoreboard players reset * tbcSeed

summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["tbc","tbcSelector"],CustomNameVisible:1,CustomName:"[{\"text\":\"|| \",\"color\":\"red\",\"bold\":true},{\"translate\":\"tbc.selected\",\"bold\":true,\"color\":\"gray\"},{\"text\":\" ||\",\"color\":\"red\",\"bold\":true}]"}

execute as @a[tag=inTBC] store result score @s tbcHealth run data get entity @s Health 1.04
execute as @a[tag=inTBC] store result score @s tbcStamina run data get entity @s foodLevel 1.04
execute as @a[tag=inTBC] store result score @s tbcAbsorption run data get entity @s AbsorptionAmount 1.04
effect clear @a absorption

gamerule naturalRegeneration false

execute as @a[scores={playerid=1}] at @s unless entity @e[tag=tbcMarkerPov1,distance=..0.01,type=area_effect_cloud] at @e[tag=tbcMarkerPov1,limit=1,type=area_effect_cloud] run tp @s ~ ~ ~
execute as @a[scores={playerid=2}] at @s unless entity @e[tag=tbcMarkerPov2,distance=..0.01,type=area_effect_cloud] at @e[tag=tbcMarkerPov2,limit=1,type=area_effect_cloud] run tp @s ~ ~ ~
execute as @a[scores={playerid=3}] at @s unless entity @e[tag=tbcMarkerPov3,distance=..0.01,type=area_effect_cloud] at @e[tag=tbcMarkerPov3,limit=1,type=area_effect_cloud] run tp @s ~ ~ ~

# Inventory
execute as @a store result score @s tbcArrow run clear @s arrow 0

execute as @a store result score @s tbcFood1 run clear @s spider_eye 0
execute as @a store result score @s tbcFood2 run clear @s poisonous_potato 0
execute as @a store result score @s tbcFood3 run clear @s rotten_flesh 0
execute as @a store result score @s tbcFood4 run clear @s chicken 0
execute as @a store result score @s tbcFood5 run clear @s beetroot 0
execute as @a store result score @s tbcFood6 run clear @s potato 0
execute as @a store result score @s tbcFood7 run clear @s cookie 0
execute as @a store result score @s tbcFood8 run clear @s mutton 0
execute as @a store result score @s tbcFood9 run clear @s cod 0
execute as @a store result score @s tbcFood10 run clear @s beef 0
execute as @a store result score @s tbcFood11 run clear @s rabbit 0
execute as @a store result score @s tbcFood12 run clear @s porkchop 0
execute as @a store result score @s tbcFood13 run clear @s carrot 0
execute as @a store result score @s tbcFood14 run clear @s apple 0
execute as @a store result score @s tbcFood15 run clear @s cooked_rabbit 0
execute as @a store result score @s tbcFood16 run clear @s baked_potato 0
execute as @a store result score @s tbcFood17 run clear @s bread 0
execute as @a store result score @s tbcFood18 run clear @s cooked_cod 0
execute as @a store result score @s tbcFood19 run clear @s golden_carrot 0
execute as @a store result score @s tbcFood20 run clear @s cooked_chicken 0
execute as @a store result score @s tbcFood21 run clear @s cooked_mutton 0
execute as @a store result score @s tbcFood22 run clear @s pumpkin_pie 0
execute as @a store result score @s tbcFood23 run clear @s cooked_beef 0
execute as @a store result score @s tbcFood24 run clear @s cooked_porkchop 0
execute as @a store result score @s tbcFood25 run clear @s golden_apple 0
execute as @a store result score @s tbcFood26 run clear @s enchanted_golden_apple 0
execute as @a store result score @s tbcFood27 run clear @s gray_dye 0
execute as @a store result score @s tbcFood28 run clear @s torch 0
execute as @a store result score @s tbcFood29 run clear @s sweet_berries 0
execute as @a store result score @s tbcFood30 run clear @s salmon 0
execute as @a store result score @s tbcFood31 run clear @s cooked_salmon 0

execute as @a store result score @s tbcThrowable1 run clear @s apple 0
execute as @a store result score @s tbcThrowable2 run clear @s beetroot 0
execute as @a store result score @s tbcThrowable3 run clear @s flint 0
execute as @a store result score @s tbcThrowable4 run clear @s egg 0
execute as @a store result score @s tbcThrowable5 run clear @s snowball 0
execute as @a store result score @s tbcThrowable6 run clear @s ink_sac 0
execute as @a store result score @s tbcThrowable7 run clear @s scute 0
execute as @a store result score @s tbcThrowable8 run clear @s gold_nugget{custom:"bee_hive"} 0
execute as @a store result score @s tbcThrowable9 run clear @s diamond_hoe{custom:"tophat"} 0
execute as @a store result score @s tbcThrowable10 run clear @s magma_cream 0
execute as @a store result score @s tbcThrowable11 run clear @s diamond_hoe{custom:"witchhat"} 0
execute as @a store result score @s tbcThrowable12 run clear @s spider_eye 0
execute as @a store result score @s tbcThrowable13 run clear @s slime_ball 0
execute as @a store result score @s tbcThrowable16 run clear @s glow_ink_sac 0

execute as @a store result score @s tbcPotion1 run clear @s potion{custom:"leaping"} 0
execute as @a store result score @s tbcPotion2 run clear @s potion{custom:"swiftness"} 0
execute as @a store result score @s tbcPotion3 run clear @s potion{custom:"fire_resistance"} 0
execute as @a store result score @s tbcPotion4 run clear @s potion{custom:"energizing_potion"} 0
execute as @a store result score @s tbcPotion5 run clear @s potion{Potion:"minecraft:healing"} 0
execute as @a store result score @s tbcPotion6 run clear @s potion{Potion:"minecraft:strong_healing"} 0
execute as @a store result score @s tbcPotion7 run clear @s potion{Potion:"minecraft:water"} 0
execute as @a store result score @s tbcPotion8 run clear @s gold_nugget{CustomModelData:40} 0
execute as @a store result score @s tbcPotion9 run clear @s potion{custom:"wind_potion"} 0

execute as @a store result score @s tbcAmFire run clear @s golden_horse_armor 0
execute as @a store result score @s tbcAmPoison run clear @s iron_horse_armor 0

# Store Effects
data modify storage glarth:main combat.inv set value []
data modify storage glarth:main combat.effect set value []
execute as @a[scores={playerid=1}] run function glarth:inventory/save
data modify storage glarth:main combat.inv append from storage glarth:main inv
data modify storage glarth:main combat.effect append from storage glarth:main effect
execute as @a[scores={playerid=2}] run function glarth:inventory/save
data modify storage glarth:main combat.inv append from storage glarth:main inv
data modify storage glarth:main combat.effect append from storage glarth:main effect
execute as @a[scores={playerid=3}] run function glarth:inventory/save
data modify storage glarth:main combat.inv append from storage glarth:main inv
data modify storage glarth:main combat.effect append from storage glarth:main effect
function glarth:combat/peffect/clear


# Load Arena
scoreboard players set compPos tbcStats 0
function glarth:combat/load_arena
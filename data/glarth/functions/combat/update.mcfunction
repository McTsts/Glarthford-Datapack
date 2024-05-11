scoreboard players set timer tbcStats 0
execute as @a[tag=inTBC,gamemode=adventure] run function glarth:combat/playerstats
execute as @a[tag=inTBC,gamemode=adventure] run function glarth:combat/actionbar
scoreboard players add start tbcStats 1
execute if score start tbcStats matches 3 run function glarth:combat/next

function glarth:combat/count

execute as @e[tag=tbcEnemy,scores={tbcBee=1..},type=armor_stand,tag=!tbcHasBee] at @s run item replace entity @e[tag=charQEBee,limit=1,sort=nearest,type=armor_stand] armor.head with minecraft:diamond_hoe[custom_model_data=30]
execute as @e[tag=tbcEnemy,scores={tbcBee=1..},type=armor_stand,tag=!tbcHasBee] at @s run tag @s add tbcHasBee
execute as @e[tag=tbcEnemy,scores={tbcBee=..0},type=armor_stand,tag=tbcHasBee] at @s run item replace entity @e[tag=charQEBee,limit=1,sort=nearest,type=armor_stand] armor.head with air
execute as @e[tag=tbcEnemy,scores={tbcBee=..0},type=armor_stand,tag=tbcHasBee] at @s run tag @s remove tbcHasBee

tag @a[gamemode=!adventure] remove tbcTurn

effect give @a[tag=inTBC] minecraft:weakness 2 120 true

function glarth:combat/objects

#execute as @e[tag=tbcTurn,tag=tbcEnemy,scores={tbcAttack=0}] run function glarth:combat/attack
#execute as @e[tag=tbcTurn,tag=tbcAlly,scores={tbcAttack=0}] run function glarth:combat/attack_ally
#execute as @e[tag=tbcTurn,tag=tbcCompanion,scores={tbcAttack=0}] run function glarth:combat/attack_companion

function glarth:combat/selection


# spec item
execute as @a[gamemode=spectator,tag=!DEV] at @s unless entity @a[gamemode=adventure,distance=..2] if entity @a[gamemode=adventure,distance=..10] run clear @s
execute as @a[gamemode=spectator] at @s unless entity @a[gamemode=adventure,distance=..2] run title @s[scores={MusicTimeR=60..}] actionbar {"translate":"spectator_inv.end","italic":true}
execute as @a[gamemode=adventure] at @s if entity @a[gamemode=spectator,distance=..1] run function glarth:mechanic/spec_inv

# debug trigger
execute if score debug tbcStats matches 1 run scoreboard players enable @a tbcA
execute if score debug tbcStats matches 1 as @r[scores={tbcA=1..}] run scoreboard players set @e[tag=tbcDebug] tbcQueue 10000
execute if score debug tbcStats matches 1 as @r[scores={tbcA=1..}] run function glarth:combat/debug_attack
execute if score debug tbcStats matches 1 as @r[scores={tbcA=1..}] as @e[tag=tbcTurn] run function glarth:combat/done
execute if score debug tbcStats matches 1 as @r[scores={tbcA=1..}] run scoreboard players set @s tbcA 0

# amulets
scoreboard players set @a[scores={tbcAmFire=1..}] tbcFire 0
scoreboard players set @a[scores={tbcAmPoison=1..}] tbcPoison 0


# fire
execute as @a[gamemode=adventure] store result score @s tbcRFire run data get entity @s Fire
execute as @a[gamemode=adventure,scores={tbcRFire=1..}] run effect give @s fire_resistance 3 0 true



# spec void
execute as @a[gamemode=spectator] at @s positioned ~ -15 ~ if entity @s[distance=..10] run tp @s ~ ~15 ~
execute as @a[gamemode=spectator] at @s positioned ~ -100 ~ if entity @s[distance=..90] run tp @s ~ ~100 ~

# kill invalid enemies
execute as @e[tag=tbcEnemy,tag=!tbcEnemy1,tag=!tbcEnemy2,tag=!tbcEnemy3,tag=!tbcEnemy4,tag=!tbcEnemy5,tag=!tbcEnemy6,tag=!tbcEnemy7,tag=!tbcEnemy8,tag=!tbcEnemy9] run function glarth:combat/die_enemy

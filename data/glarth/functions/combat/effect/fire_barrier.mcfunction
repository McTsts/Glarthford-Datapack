execute unless score @s tbcFireResis matches 1.. unless score @s tbcAmFire matches 1.. run scoreboard players remove @s[type=player] tbcHealth 2
execute unless score @s tbcFireResis matches 1.. unless score @s tbcAmFire matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.fire_barrier","with":[{"text":"2.±","color":"red"}]}]
execute unless score @s tbcFireResis matches 1.. unless score @s tbcAmFire matches 1.. run scoreboard players add @s tbcFire 2
execute unless score @s tbcFireResis matches 1.. unless score @s tbcAmFire matches 1.. at @s run playsound minecraft:entity.generic.burn player @a ~ ~ ~ 1 1
tag @s add tbcFBHit

# Sound
execute unless score @s tbcFireResis matches 1.. at @s run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1
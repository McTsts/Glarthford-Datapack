tag @a remove func2
tag @a remove func
tag @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate"}]},gamemode=adventure] add func 
tag @a[nbt={Inventory:[{id:"minecraft:chainmail_leggings"}]},gamemode=adventure] add func
scoreboard players remove @a[scores={diaCooldown=1..}] diaCooldown 1
execute as @a[tag=func,gamemode=adventure] if score @s diaCooldown matches 1.. as @e[tag=char,type=armor_stand,distance=..20] run function glarth:dialogue/all
execute as @a[tag=func,gamemode=adventure] if score @s diaCooldown matches 1.. run tag @s remove func
execute as @r[tag=func,gamemode=adventure] at @s run tag @a[distance=0.1..] remove func
execute as @a[tag=func,gamemode=adventure] at @s unless score timer cedric matches -1000.. run stopsound @a[distance=..5] voice 
execute as @a[tag=func,gamemode=adventure] at @s positioned ^ ^ ^1.5 unless score timer cedric matches -1000.. if entity @e[tag=char,distance=..7] run function glarth:dialogue/check
execute as @a[tag=func,gamemode=adventure] at @s positioned ^ ^ ^1.5 unless score timer cedric matches -1000.. if entity @e[tag=char,distance=..7] as @e[tag=char,type=armor_stand,limit=1,sort=nearest] unless score @s charMouth matches 1.. run tag @s add charA
execute as @a[tag=func,gamemode=adventure] at @s as @e[tag=char,type=armor_stand,distance=..20] run function glarth:dialogue/all
execute as @r[tag=func,gamemode=adventure] at @s run scoreboard players set @s diaCooldown 30
tag @a remove func
clear @a chainmail_leggings
clear @a chainmail_chestplate


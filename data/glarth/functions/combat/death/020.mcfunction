execute at @s run kill @e[type=end_crystal,tag=tbcActualCrystal,sort=nearest,limit=1]
scoreboard players set damage tbcStats 30
scoreboard players set @a blocked 0
execute if entity @a[tag=tbcTurn,scores={tbcAttack=1}] at @s as @e[tag=tbcPlayerAS,distance=..5] run function glarth:combat/action/util/via_damage
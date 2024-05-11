execute as @e[tag=netheran_boss] at @s run summon zombified_piglin ~ ~1 ~ {Tags:["minion"],IsBaby:1,Anger:767,Attributes:[{Name:"generic.maxHealth",Base:5}],Health:5.0f}
scoreboard players reset @e[tag=netheran_boss] SKBossTimer
execute as @e[tag=netheran_boss] at @s run function glarth:dialogue/netheran/lines/attack1
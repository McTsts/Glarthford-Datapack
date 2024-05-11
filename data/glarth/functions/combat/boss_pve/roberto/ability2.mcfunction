execute as @e[tag=roberto_boss] at @s run effect give @a[distance=..15,gamemode=adventure] blindness 3 3
scoreboard players reset @e[tag=roberto_boss] SKBossTimer
execute as @e[tag=roberto_boss] at @s run function glarth:dialogue/roberto/lines/attack2
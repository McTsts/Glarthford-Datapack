execute as @e[tag=roberto_boss] at @s run summon minecraft:evoker_fangs ~2 26 ~
execute as @e[tag=roberto_boss] at @s run summon minecraft:evoker_fangs ~-2 26 ~
execute as @e[tag=roberto_boss] at @s run summon minecraft:evoker_fangs ~ 26 ~-2
execute as @e[tag=roberto_boss] at @s run summon minecraft:evoker_fangs ~ 26 ~2
scoreboard players reset @e[tag=roberto_boss] SKBossTimer
execute as @e[tag=roberto_boss] at @s run function glarth:dialogue/roberto/lines/attack1
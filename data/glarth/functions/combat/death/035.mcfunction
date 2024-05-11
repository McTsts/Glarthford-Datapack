execute if entity @s[tag=tbcBat] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcBat] run schedule function glarth:dialogue/bat/lines/lose 1t
execute if entity @s[tag=tbcRoberto] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcRoberto] run schedule function glarth:dialogue/roberto/lines/lose 1t
execute if entity @s[tag=tbcSkeletonKing] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcSkeletonKing] run schedule function glarth:dialogue/skeleton_king/lines/lose 1t
execute if entity @s[tag=tbcNetheran] run scoreboard players set winDelay tbcStats 6
execute if entity @s[tag=tbcNetheran] run schedule function glarth:dialogue/netheran/lines/lose 1t
execute if entity @s[tag=tbcEnderPriest1] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcEnderPriest1] run schedule function glarth:dialogue/ender_priest/lines/lose1 1t
execute if entity @s[tag=tbcEnderPriest2] run scoreboard players set winDelay tbcStats 8
execute if entity @s[tag=tbcEnderPriest2] run schedule function glarth:dialogue/ender_priest/lines/lose 1t
execute if entity @s[tag=tbcEvilTs] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcEvilTs] run schedule function glarth:dialogue/evil_ts/lines/line4 1t
execute if entity @s[tag=tbcVishnoldSmall] at @s unless entity @e[tag=tbcVishnold,scores={tbcHealth=1..},distance=0.01..] run scoreboard players set winDelay tbcStats 2
execute if entity @s[tag=tbcVishnoldSmall] at @s unless entity @e[tag=tbcVishnold,scores={tbcHealth=1..},distance=0.01..] run schedule function glarth:dialogue/slime/lines/lose 1t
execute if entity @s[tag=tbcGrimsbane] run scoreboard players set winDelay tbcStats 7
execute if entity @s[tag=tbcGrimsbane] run schedule function glarth:dialogue/grimsbane/lines/lose 1t
execute if entity @s[tag=tbcNecromancer] run scoreboard players set winDelay tbcStats 10
execute if entity @s[tag=tbcNecromancer] run schedule function glarth:dialogue/necromancer/lines/lose 1t
execute if entity @s[tag=tbcPiglin] at @s unless entity @e[tag=tbcPiglin,scores={tbcHealth=1..},distance=0.01..] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcPiglin] at @s unless entity @e[tag=tbcPiglin,scores={tbcHealth=1..},distance=0.01..] run schedule function glarth:dialogue/piglin1/lines/lose 1t
execute if entity @s[tag=tbcRaidLeader,scores={tbcTOU=..0}] run scoreboard players set winDelay tbcStats 7
execute if entity @s[tag=tbcRaidLeader,scores={tbcTOU=..0}] run schedule function glarth:dialogue/raid_leader/lines/lose 1t
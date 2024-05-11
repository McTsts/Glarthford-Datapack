execute if entity @s[tag=tbcBlazeA] run scoreboard players set winDelay tbcStats 5
execute if entity @s[tag=tbcBlazeA] run schedule function glarth:dialogue/blaze1/lines/lose 1t
execute if entity @s[tag=tbcBlazeB] run scoreboard players set winDelay tbcStats 6
execute if entity @s[tag=tbcBlazeB] run schedule function glarth:dialogue/blaze2/lines/lose 1t

scoreboard players remove blazes Stats 1
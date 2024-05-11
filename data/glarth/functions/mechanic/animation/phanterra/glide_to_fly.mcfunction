execute as @s[scores={phanterraAnim=..4}] run function glarth:mechanic/animation/phanterra/glide
execute as @s[scores={phanterraAnim=6..}] run function glarth:mechanic/animation/phanterra/glide
execute as @s[scores={phanterraAnim=5}] run scoreboard players set @s phanterraState 4
execute as @s[scores={phanterraState=4}] run scoreboard players remove @s phanterraAnim 1

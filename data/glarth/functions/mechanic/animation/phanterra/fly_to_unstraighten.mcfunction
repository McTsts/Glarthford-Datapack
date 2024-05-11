execute as @s[scores={phanterraAnim=1..}] run function glarth:mechanic/animation/phanterra/fly
execute as @s[scores={phanterraAnim=..0}] run scoreboard players remove @s phanterraAnim 1
execute as @s[scores={phanterraAnim=..0}] run scoreboard players set @s phanterraState 6

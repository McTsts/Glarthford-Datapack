execute as @s[scores={phanterraAnim=..3}] run function glarth:mechanic/animation/phanterra/fly
execute as @s[scores={phanterraAnim=5..}] run function glarth:mechanic/animation/phanterra/fly
execute as @s[scores={phanterraAnim=4}] run scoreboard players set @s phanterraState 8
execute as @s[scores={phanterraState=8}] run scoreboard players remove @s phanterraAnim 1

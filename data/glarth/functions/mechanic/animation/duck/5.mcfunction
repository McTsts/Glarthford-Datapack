execute as @s[tag=duck5,scores={Animation=1}] at @s run tp @s ~ ~ ~ -130 ~
execute as @s[tag=duck5,scores={Animation=51}] at @s run tp @s ~ ~ ~ -100 ~
execute as @s[tag=duck5,scores={Animation=101}] at @s run tp @s ~ ~ ~ -40 ~
execute as @s[tag=duck5,scores={Animation=151}] at @s run tp @s ~ ~ ~ -80 ~
execute as @s[tag=duck5,scores={Animation=201}] at @s run tp @s ~ ~ ~ -110 ~
execute as @s[tag=duck5,scores={Animation=201}] at @s run scoreboard players add duck5 Animation 1
execute as @s[tag=duck5,scores={Animation=201..}] at @s run scoreboard players set @s Animation 0
execute if score duck5 Animation matches 20.. run tag @e[tag=duck5] add die
function glarth:mechanic/animation/duck/sound_one
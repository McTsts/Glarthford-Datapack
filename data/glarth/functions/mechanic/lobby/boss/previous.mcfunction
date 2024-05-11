scoreboard players remove bossRe Stats 1
scoreboard players operation bossRe Stats %= 11 Const

scoreboard players set bossDir Stats -1

execute if score bossRe Stats matches 0.. at @s run stopsound @s[tag=!bossSoundPlayed] master minecraft:ui.button.click
execute if score bossRe Stats matches 0.. at @s run playsound minecraft:ui.button.click player @s[tag=!bossSoundPlayed] ~ ~ ~ 0.5 2
tag @s add bossSoundPlayed
function glarth:mechanic/lobby/boss/check
tag @s remove bossSoundPlayed
# VLogo Spin
execute if score doVLogo pcData matches 0 if score curVLogo pcData matches 7.. run scoreboard players set curVLogo pcData 0
execute if score doVLogo pcData matches 0 if score curVLogo pcData matches 1..6 run scoreboard players set doVLogo pcData 1
execute if score doVLogo pcData matches 1 run function glarth:mechanic/lobby/pc/logo_animation
scoreboard players set doVLogo pcData 0

# Link Animation
execute unless score animLink pcData = curLinkAnim pcData if score curLinkFrame pcData matches 6.. run function glarth:mechanic/lobby/pc/header_reset
execute if score animLink pcData matches 1.. if score curLinkAnim pcData matches 0 run scoreboard players set curLinkFrame pcData 0
execute if score animLink pcData matches 1.. if score curLinkAnim pcData matches 0 run scoreboard players operation curLinkAnim pcData = animLink pcData
execute if score curLinkAnim pcData matches 1.. run function glarth:mechanic/lobby/pc/header_animation
scoreboard players set animLink pcData 0

# Click/Hover/Scroll/Sneak Detection
scoreboard players set @a pcRec 0
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["pcRecEval"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute positioned 162 23 -112 as @a[distance=..2] at @s positioned ~ ~1.6 ~ run function glarth:mechanic/lobby/pc/rec
execute positioned 162 23 -112 as @a[distance=2..] run scoreboard players reset @s pcSpeed1
execute positioned 162 23 -112 as @a[distance=2..] run scoreboard players reset @s pcSpeed2
execute positioned 162 23 -112 as @a[distance=2..] run scoreboard players reset @s pcSpeed3
execute positioned 162 23 -112 as @a[distance=2..] run scoreboard players reset @s pcSpeed4
execute positioned 162 23 -112 as @a[distance=2..] run scoreboard players reset @s pcSpeed5
execute positioned 162 23 -112 as @a[distance=2..] run scoreboard players reset @s pcSlot
kill @e[tag=pcRecEval]

scoreboard players set @a pcSneak 0

tag @a remove lobbyPCclicked
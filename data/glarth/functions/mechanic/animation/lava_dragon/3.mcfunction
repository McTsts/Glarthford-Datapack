# Move
execute if score @s lavaDragonAnim matches 1 facing -180 47 -170 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 2 facing -184 43 -179 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 3 facing -186 37 -188 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 4 facing -197 29 -196 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 5 facing -203 21 -196 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 6 facing -210 20 -196 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 7 facing -216 23 -198 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s lavaDragonAnim matches 8 facing -220 29 -198 run tp @s ^ ^ ^0.1 ~ ~

# Next
execute positioned -180 47 -170 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 2
execute positioned -184 43 -179 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 3
execute positioned -186 37 -188 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 4
execute positioned -197 29 -196 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 5
execute positioned -203 21 -196 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 6
execute positioned -210 20 -196 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 7
execute positioned -216 23 -198 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 8
execute positioned -220 29 -198 if entity @s[distance=..0.2] run scoreboard players set @s lavaDragonAnim 9

execute as @s[scores={lavaDragonAnim=9}] run kill @e[tag=lava_dragonP,type=armor_stand,distance=..15]

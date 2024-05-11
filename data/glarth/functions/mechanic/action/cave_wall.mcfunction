scoreboard players add @s action 1
tp @s[scores={action=1..8}] ~ ~ ~-0.07
tp @s[scores={action=9..13}] ~ ~-0.19 ~-0.08
tp @s[scores={action=14..16}] ~ ~ ~-0.09
tp @s[scores={action=17..22}] ~ ~ ~-0.1 ~2 ~
tp @s[scores={action=23..27}] ~0.05 ~ ~-0.1 ~3.5 ~
tp @s[scores={action=28..30}] ~0.1 ~ ~-0.05 ~3.5 ~
tp @s[scores={action=31..42}] ~0.1 ~ ~-0.04 ~4 ~
tp @s[scores={action=43..50}] ~0.1 ~ ~ ~0.25 ~
execute as @s[scores={action=55..55}] run fill 68 28 -156 68 29 -155 air destroy
execute as @s[scores={action=55..55}] run fill 68 28 -157 68 26 -156 air destroy
execute as @s[scores={action=65..65}] run summon armor_stand ~ ~1.4 ~ {Tags:["char_msg"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:"{\"text\":\"???\",\"color\":\"gray\"}",NoGravity:1,Team:gray}
tp @s[scores={action=85..105}] ~0.1 ~ ~ ~ ~
execute as @s[scores={action=105..105}] run replaceitem entity @e[tag=archaeologist] armor.head diamond_hoe{Damage:14}
execute as @s[scores={action=105..105}] run give @p[gamemode=adventure] diamond_pickaxe{CanDestroy:["lapis_block"],HideFlags:55} 1
tag @s[scores={action=105..105}] remove cave_wall
scoreboard players set @s[scores={action=105..105}] action 0
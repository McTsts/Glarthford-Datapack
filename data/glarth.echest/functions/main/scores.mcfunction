#counting all players that opened an ender chest this tick
execute store result score total= echest.open if entity @a[scores={echest.open=1..}]

#closing all ender chests if ore than one player opened a chest in the same tick
execute if score total= echest.open matches 2.. as @e[type=minecraft:area_effect_cloud,tag=echest] at @s run schedule function glarth.echest:main/invalidate_all 2t

#resetting scores
execute unless score total= echest.open matches 0 run scoreboard players set total= echest.open 0
scoreboard players reset @a echest.open

#closing ender chests if none are open
execute unless score time= echest.open matches 0 if score time_p= echest.open = time= echest.open run function glarth.echest:main/close
scoreboard players operation time_p= echest.open = time= echest.open
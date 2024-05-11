execute as @e[tag=netheran] at @s run summon wither_skeleton ~ ~ ~ {Tags:["netheran_boss","boss"],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":{rgb:9699328}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":{rgb:16743472}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":{rgb:8716288}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:"42e2551b-efee-4182-8f89-f4f54d680732",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzkzMjg4YzFlM2JlMjYzOGU1ZmE3N2Y2NzliY2M0NjdjYTk4NDhlYjU2MTRjYTRiOWJjZTllZGE5MGE4MjIifX19"}]}}}],HandItems:[{id:"minecraft:iron_sword",count:1,components:{"minecraft:enchantments":{levels:{knockback:1,fire_aspect:1}}}},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.085f],ActiveEffects:[{Id:2,Amplifier:2,Duration:199980,ShowParticles:0b}],Attributes:[{Name:"generic.maxHealth",Base:100}],Health:100.0f,CustomName:'{"translate":"netheran","color":"dark_red"}'}
title @a title ["",{"translate":"netheran","color":"dark_red","bold":true}]
particle flame -137 21 -203 1 1 1 1 100
kill @e[tag=netheran]
fill -117 25 -205 -117 22 -203 minecraft:nether_brick_fence replace air
execute as @a at @s run playsound boss3 voice @s ~ ~ ~ 0.8 1
tp @a[x=-136,y=21,z=-204,distance=6..,gamemode=adventure] @r[x=-136,y=21,z=-204,distance=..6,gamemode=adventure]
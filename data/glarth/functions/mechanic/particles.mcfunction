particle happy_villager 53 45 -129 7 7 7 1 1 normal @a[x=53,y=38,z=-129,distance=..9]
execute unless score season winter matches 1 run particle cloud 56.0 38 -128 0.2 0.2 0.8 0 1
execute unless score season winter matches 1 run particle minecraft:dripping_water 53 35 -128 3 3 3 0 1
execute unless score season winter matches 1 run particle minecraft:dripping_water 32 27 -135 0.4 0.2 0.8 0 1
execute unless score season winter matches 1 run particle cloud 44 28.0 -132.0 0.4 0.2 0.6 0 1
execute unless score season winter matches 1 run particle cloud -78.0 30.0 -269 0.5 0.5 1 0 3
execute unless score season winter matches 1 run particle cloud 50 26.0 -266.0 0.8 0.4 0.2 0 1
particle smoke -53 47 -201 0.2 4 0.2 0.1 1
particle splash -56.5 27.1 -207.0 0 0 -5 0.05
particle splash -56.3 27.1 -207.0 1 0 -5 0.05
particle splash -56.1 27.1 -207.0 2 0 -5 0.05
particle splash -56.7 27.1 -207.0 -1 0 -5 0.05
particle splash -56.9 27.1 -207.0 -2 0 -5 0.05
particle splash -57 27.0 -208 2 0.1 2 0 1
particle block lime_concrete -57 27.0 -208 2 0.1 2 0 1 normal @a
execute unless score season winter matches 1 run particle splash 7 29 -196 0.1 0.5 0.1 0 10
particle minecraft:smoke 88.5 38.5 -184.5 0.1 1 0.1 0.01 10

scoreboard players add explorerTorch particle 1
execute if score explorerTorch particle matches 10.. as @e[tag=charTorch] at @s run particle minecraft:flame ^-1.08 ^1.35 ^0.2 0.07 0.07 0.07 0 1
execute if score explorerTorch particle matches 10.. as @e[tag=charTorchEnd] at @s run particle minecraft:portal ^-1.08 ^1.35 ^0.2 0.07 0.07 0.07 0 5
execute if score explorerTorch particle matches 10.. run scoreboard players set explorerTorch particle 0

scoreboard players add minerTorch particle 1
execute if score minerTorch particle matches 20.. as @e[tag=miner_light] at @s run particle minecraft:flame ^ ^1.5 ^0.45 0.02 0.02 0.02 0 1
execute if score minerTorch particle matches 20.. run scoreboard players set minerTorch particle 0
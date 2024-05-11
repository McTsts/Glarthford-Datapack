#M16; M15; M13; M12; M11; Mojang; Mojira; Realms; Translator

# Reset
scoreboard players set @s charC1 0
scoreboard players set @s charC2 0
scoreboard players set @s charC3 0

# Find First Cape
execute if entity @s[tag=cp1] if score @s charC1 matches 0 run scoreboard players set @s charC1 1
execute if entity @s[tag=cp2] if score @s charC1 matches 0 run scoreboard players set @s charC1 2
execute if entity @s[tag=cp3] if score @s charC1 matches 0 run scoreboard players set @s charC1 3
execute if entity @s[tag=cp4] if score @s charC1 matches 0 run scoreboard players set @s charC1 4
execute if entity @s[tag=cp5] if score @s charC1 matches 0 run scoreboard players set @s charC1 5
execute if entity @s[tag=cp6] if score @s charC1 matches 0 run scoreboard players set @s charC1 6
execute if entity @s[tag=cp7] if score @s charC1 matches 0 run scoreboard players set @s charC1 7
execute if entity @s[tag=cp8] if score @s charC1 matches 0 run scoreboard players set @s charC1 8
execute if entity @s[tag=cp9] if score @s charC1 matches 0 run scoreboard players set @s charC1 9
execute if entity @s[tag=cp10] if score @s charC1 matches 0 run scoreboard players set @s charC1 13
execute if entity @s[tag=cpX] if score @s charC1 matches 0 run scoreboard players set @s charC1 10
execute if entity @s[tag=cpA] if score @s charC1 matches 0 run scoreboard players set @s charC1 11
execute if entity @s[tag=cpB] if score @s charC1 matches 0 run scoreboard players set @s charC1 12

# Find Second Cape
execute if entity @s[tag=cpA] if score @s charC2 matches 0 unless score @s charC1 matches 11 run scoreboard players set @s charC2 11
execute if entity @s[tag=cpB] if score @s charC2 matches 0 unless score @s charC1 matches 12 run scoreboard players set @s charC2 12

# Find Third Cape
execute if entity @s[tag=cpB] if score @s charC3 matches 0 unless score @s charC1 matches 12 unless score @s charC2 matches 12 run scoreboard players set @s charC3 12
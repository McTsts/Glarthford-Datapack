scoreboard players add @s meteor 1
execute as @s[scores={meteor=1..50}] at @s run playsound minecraft:entity.firework.launch block @a 50 24 -185 5 0
execute as @s[scores={meteor=5..5}] at @s run particle flame ~ ~50 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=10..10}] at @s run particle flame ~ ~45 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=15..15}] at @s run particle flame ~ ~40 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=20..20}] at @s run particle flame ~ ~35 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=25..25}] at @s run particle flame ~ ~30 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=30..30}] at @s run particle flame ~ ~25 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=35..35}] at @s run particle flame ~ ~20 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=40..40}] at @s run particle flame ~ ~15 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=45..45}] at @s run particle flame ~ ~10 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=47..47}] at @s run particle flame ~ ~5 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=50..50}] at @s run particle flame ~ ~1 ~ 0.5 2 0.5 0 50 force
execute as @s[scores={meteor=50..50}] at @s run particle explosion ~ ~1 ~ 0.5 2 0.5 0 10 force
execute as @s[scores={meteor=51..51}] at @s run particle explosion ~ ~1 ~ 1 1 1 0 13 force
execute as @s[scores={meteor=52..52}] at @s run particle explosion ~ ~1 ~ 2 1 2 0 16 force
execute as @s[scores={meteor=53..53}] at @s run particle explosion ~ ~1 ~ 3 1 3 0 19 force
execute as @s[scores={meteor=53..53}] at @s run particle lava ~ ~1 ~ 2 2 2 1 40 force
execute as @s[scores={meteor=53..53}] at @s run playsound minecraft:entity.generic.explode block @a 50 24 -185 5 1
execute as @s[scores={meteor=53..53}] at @s run function glarth:mechanic/animation/meteor/do
kill @s[scores={meteor=53..53}]
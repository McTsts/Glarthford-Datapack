scoreboard players set r Random 8
function glarth:util/randomish
execute at @s if score n Random matches 1 run tp @s ~5 ~ ~
execute at @s if score n Random matches 2 run tp @s ~-5 ~ ~
execute at @s if score n Random matches 3 run tp @s ~10 ~ ~
execute at @s if score n Random matches 4 run tp @s ~-10 ~ ~
execute at @s if score n Random matches 5 run tp @s ~15 ~ ~
execute at @s if score n Random matches 6 run tp @s ~-15 ~ ~
function glarth:util/randomish
execute at @s if score n Random matches 1 run tp @s ~ ~ ~5
execute at @s if score n Random matches 2 run tp @s ~ ~ ~-5
execute at @s if score n Random matches 3 run tp @s ~ ~ ~10
execute at @s if score n Random matches 4 run tp @s ~ ~ ~-10
execute at @s if score n Random matches 5 run tp @s ~ ~ ~15
execute at @s if score n Random matches 6 run tp @s ~ ~ ~-15
function glarth:util/randomish
execute at @s if score n Random matches 1 run tp @s ~1 ~ ~
execute at @s if score n Random matches 2 run tp @s ~2 ~ ~
execute at @s if score n Random matches 3 run tp @s ~3 ~ ~
execute at @s if score n Random matches 4 run tp @s ~-1 ~ ~
execute at @s if score n Random matches 5 run tp @s ~-2 ~ ~
execute at @s if score n Random matches 6 run tp @s ~-3 ~ ~
function glarth:util/randomish
execute at @s if score n Random matches 1 run tp @s ~ ~ ~1
execute at @s if score n Random matches 2 run tp @s ~ ~ ~2
execute at @s if score n Random matches 3 run tp @s ~ ~ ~3
execute at @s if score n Random matches 4 run tp @s ~ ~ ~-1
execute at @s if score n Random matches 5 run tp @s ~ ~ ~-2
execute at @s if score n Random matches 6 run tp @s ~ ~ ~-3
execute at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":165}}],Invisible:1,Small:1,active_effects:[{id:"minecraft:slow_falling",duration:-1,amplifier:0,show_particles:0b}],Tags:["snowflake","snowflakeNA"],Pose:{Head:[0.0f,0.0f,90.0f]},Rotation:[0.1f,0.0f]}
kill @s
scoreboard players set r Random 4
function glarth:util/randomish
execute if score n Random matches 1 run summon minecraft:area_effect_cloud 5 60 -300 {Radius:0.0f,Effects:[],Particle:"block air",Duration:2147483647,Tags:["snowflake","snowflakeN"]}
execute if score n Random matches 2 run summon minecraft:area_effect_cloud 5 60 -300 {Radius:0.0f,Effects:[],Particle:"block air",Small:1,Duration:2147483647,Tags:["snowflake","snowflakeN"]}
execute if score n Random matches 3 run summon minecraft:area_effect_cloud 5 60 -300 {Radius:0.0f,Effects:[],Particle:"block air",Duration:2147483647,Tags:["snowflake","snowflakeN"]}
execute as @e[tag=snowflakeN,type=area_effect_cloud] at @s run function glarth:mechanic/animation/snowflake_new

scoreboard players add @e[tag=snowflakeNA,type=armor_stand] snowflake 1
execute as @e[tag=snowflakeNA,type=armor_stand,scores={snowflake=4}] at @s run function glarth:mechanic/animation/snowflake_new2 
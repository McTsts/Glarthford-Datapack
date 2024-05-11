scoreboard players tag @e[tag=char] remove hasC 
scoreboard players tag @e[tag=char_collision] remove hasC 
execute @e[tag=char_collision] ~ ~ ~ scoreboard players tag @e[tag=char,c=1,r=1] add hasC 
scoreboard players tag @e[tag=cnoc] add hasC 
scoreboard players tag @e[tag=sleep] add hasC 
execute @e[tag=char] ~ ~ ~ scoreboard players tag @e[tag=char_collision,c=1,r=1] add hasC 
execute @e[tag=char] ~ ~ ~ execute @s[tag=!hasC] ~ ~ ~ summon minecraft:shulker ~ ~ ~ {Invulnerable:1,Color:15,Silent:1b,NoGravity:1,Tags:["char_collision","hasC"],NoAI:1}
execute @e[tag=char_collision] ~ ~ ~ execute @s[tag=!hasC] ~ ~ ~ entitydata @s {Health:0.0f,DeathTime:19s}
scoreboard players tag @s add canDie
execute @a ~ ~ ~ scoreboard players tag @e[r=15,tag=canDie] remove canDie
kill @s[tag=canDie]
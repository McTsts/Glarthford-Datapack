 scoreboard players tag @e[tag=netheran] add b_a
  scoreboard players tag @e[tag=netheran] add b_b
execute @e[tag=blaze_a] ~ ~ ~ scoreboard players tag @e[tag=netheran] remove b_a
execute @e[tag=blaze_b] ~ ~ ~ scoreboard players tag @e[tag=netheran] remove b_b
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_a] ~ ~ ~ execute @s[tag=!b_ab] ~ ~ ~ setblock -130 31 -241 stone 2
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_a] ~ ~ ~ execute @s[tag=!b_ab] ~ ~ ~ playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 2
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_a] ~ ~ ~ execute @s[tag=!b_ab] ~ ~ ~ particle cloud -130 23 -241 0.2 0.2 0.2 1 100
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_a] ~ ~ ~ execute @s[tag=!b_ab] ~ ~ ~ scoreboard players tag @s add b_ab
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_b] ~ ~ ~ execute @s[tag=!b_bb] ~ ~ ~ setblock -132 30 -167 stone 2
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_b] ~ ~ ~ execute @s[tag=!b_bb] ~ ~ ~ playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 2
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_b] ~ ~ ~ execute @s[tag=!b_bb] ~ ~ ~ particle cloud -132 23 -167 0.2 0.2 0.2 1 100
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_b] ~ ~ ~ execute @s[tag=!b_bb] ~ ~ ~ scoreboard players tag @s add b_bb
execute @e[tag=netheran] ~ ~ ~ execute @s[tag=b_a] ~ ~ ~ execute @s[tag=b_b] ~ ~ ~ scoreboard players tag @s add a
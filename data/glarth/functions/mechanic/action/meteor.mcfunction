scoreboard players add @s meteor 1
execute @s[score_meteor_min=1,score_meteor=1] ~ ~ ~ clone 46 19 -172 37 15 -181 45 23 -190
execute @s[score_meteor_min=1,score_meteor=50] ~ ~ ~ playsound minecraft:entity.firework.launch master @a 50 24 -185 5 0
execute @s[score_meteor_min=5,score_meteor=5] ~ ~ ~ particle flame ~ ~50 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=10,score_meteor=10] ~ ~ ~ particle flame ~ ~45 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=15,score_meteor=15] ~ ~ ~ particle flame ~ ~40 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=20,score_meteor=20] ~ ~ ~ particle flame ~ ~35 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=25,score_meteor=25] ~ ~ ~ particle flame ~ ~30 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=30,score_meteor=30] ~ ~ ~ particle flame ~ ~25 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=35,score_meteor=35] ~ ~ ~ particle flame ~ ~20 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=40,score_meteor=40] ~ ~ ~ particle flame ~ ~15 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=45,score_meteor=45] ~ ~ ~ particle flame ~ ~10 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=47,score_meteor=47] ~ ~ ~ particle flame ~ ~5 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=50,score_meteor=50] ~ ~ ~ particle flame ~ ~1 ~ 0.5 2 0.5 0 50 force
execute @s[score_meteor_min=50,score_meteor=50] ~ ~ ~ particle largeexplode ~ ~1 ~ 0.5 2 0.5 0 10 force
execute @s[score_meteor_min=51,score_meteor=51] ~ ~ ~ particle largeexplode ~ ~1 ~ 1 1 1 0 13 force
execute @s[score_meteor_min=52,score_meteor=52] ~ ~ ~ particle largeexplode ~ ~1 ~ 2 1 2 0 16 force
execute @s[score_meteor_min=53,score_meteor=53] ~ ~ ~ particle largeexplode ~ ~1 ~ 3 1 3 0 19 force
execute @s[score_meteor_min=53,score_meteor=53] ~ ~ ~ particle lava ~ ~1 ~ 2 2 2 1 40 force
execute @s[score_meteor_min=53,score_meteor=53] ~ ~ ~ playsound minecraft:entity.generic.explode master @a 50 24 -185 5 1
execute @s[score_meteor_min=53,score_meteor=53] ~ ~ ~ clone 57 19 -172 48 15 -181 45 23 -190
kill @s[score_meteor_min=53,score_meteor=53]
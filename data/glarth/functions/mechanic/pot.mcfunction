scoreboard players remove @s PoT 1
execute @s[score_PoT_min=99,score_PoT=99] ~ ~ ~ playsound minecraft:item.totem.use master @a ~ ~ ~ 0.7 2
execute @s[score_PoT_min=99,score_PoT=99] ~ ~ ~ tellraw @a {"translate":"tip.pot","color":"green","italic":true}
execute @s[score_PoT_min=0,score_PoT=100] ~ ~ ~ tp @s ~ ~ ~ ~5 ~
execute @s[score_PoT_min=0,score_PoT=75] ~ ~ ~ tp @s ~ ~ ~ ~10 ~
execute @s[score_PoT_min=0,score_PoT=50] ~ ~ ~ tp @s ~ ~ ~ ~15 ~
execute @s[score_PoT_min=0,score_PoT=25] ~ ~ ~ tp @s ~ ~ ~ ~20 ~
execute @s[score_PoT_min=99,score_PoT=99] ~ ~ ~ effect @s 15 1 0 true
execute @s[score_PoT_min=99,score_PoT=99] ~ ~ ~ effect @s 9 10 0 true
execute @s[score_PoT_min=50,score_PoT=100] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 0 1
execute @s[score_PoT_min=50,score_PoT=90] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 0 2
execute @s[score_PoT_min=50,score_PoT=81] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 0 4
execute @s[score_PoT_min=50,score_PoT=73] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 0 8
execute @s[score_PoT_min=50,score_PoT=65] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 0 16
execute @s[score_PoT_min=50,score_PoT=57] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 0 32
execute @s[score_PoT_min=50,score_PoT=50] ~ ~ ~ playsound minecraft:item.totem.use master @a ~ ~ ~ 0.7 2
execute @s[score_PoT_min=50,score_PoT=50] ~ ~ ~ effect @s 15 1 0 true
execute @s[score_PoT_min=30,score_PoT=50] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=30,score_PoT=45] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 1 2
execute @s[score_PoT_min=30,score_PoT=40] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 1 4
execute @s[score_PoT_min=30,score_PoT=35] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 1 8
execute @s[score_PoT_min=30,score_PoT=32] ~ ~ ~ particle magicCrit ~ ~1 ~ 0.3 0.5 0.3 1 16
execute @s[score_PoT_min=30,score_PoT=30] ~ ~ ~ playsound minecraft:item.totem.use master @a ~ ~ ~ 0.7 2
execute @s[score_PoT_min=30,score_PoT=30] ~ ~ ~ effect @s 15 1 0 true
execute @s[score_PoT_min=0,score_PoT=30] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=25] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=20] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=25] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=20] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=15] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=10] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=0,score_PoT=5] ~ ~ ~ particle totem ~ ~1 ~ 0.3 0.5 0.3 1 1
execute @s[score_PoT_min=1,score_PoT=1] ~ ~ ~ playsound minecraft:item.totem.use master @a ~ ~ ~ 0.7 0
execute @s[score_PoT_min=1,score_PoT=1] ~ ~ ~ effect @s 9 0 0 true
execute @s[score_PoT_min=0,score_PoT=0] ~ ~ ~ tp @s ~ ~ ~ ~-25 ~
execute @s[score_PoT_min=1,score_PoT=65] ~ ~ ~ scoreboard players remove tick Dis 20
advancement grant @s only custom:misc/1
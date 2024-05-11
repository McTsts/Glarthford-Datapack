scoreboard players add @e[tag=DR] DR 1
scoreboard players add @e[tag=DRL] DR 1
execute @e[score_DR_min=1,score_DR=1,tag=DR] ~ ~ ~ setblock ~ ~ ~ redstone_block
execute @e[score_DR_min=2,score_DR=2,tag=DR] ~ ~ ~ setblock ~ ~ ~ air 0 destroy
execute @e[score_DR_min=1,score_DR=1,tag=DRL] ~ ~ ~ detect ~1 ~ ~ trapdoor * setblock ~1 ~ ~ trapdoor facing=east,half=top,open=true
execute @e[score_DR_min=1,score_DR=1,tag=DRL] ~ ~ ~ detect ~-1 ~ ~ trapdoor * setblock ~-1 ~ ~ trapdoor facing=west,half=top,open=true
execute @e[score_DR_min=1,score_DR=1,tag=DRL] ~ ~ ~ detect ~ ~ ~-1 trapdoor * setblock ~ ~ ~-1 trapdoor facing=north,half=top,open=true
execute @e[score_DR_min=1,score_DR=1,tag=DRL] ~ ~ ~ detect ~ ~ ~1 trapdoor * setblock ~ ~ ~1 trapdoor facing=south,half=top,open=true
kill @e[score_DR_min=2,score_DR=2]

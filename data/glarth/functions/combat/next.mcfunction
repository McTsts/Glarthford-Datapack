function glarth:combat/done_tags
scoreboard players set @e[tag=tbcAnotherTurn,tag=inTBC] tbcQueue 1000
tag @e[tag=tbcAnotherTurn,tag=inTBC] remove tbcAnotherTurn

execute as @e[tag=inTBC] run scoreboard players operation @s tbcQueue += @s tbcSpeed
scoreboard players set max tbcQueue 0
execute as @e[tag=inTBC] run scoreboard players operation max tbcQueue > @s tbcQueue
execute as @e[tag=inTBC] if score @s tbcQueue = max tbcQueue run tag @s add tbcTemp
tag @e[tag=tbcTemp] add rand_sel
function glarth:util/rand_sel/1
tag @e[tag=rand_sel_result,limit=1] add tbcTurn
tag @e[tag=inTBC] remove tbcTemp
execute unless entity @e[tag=tbcEnemy,tag=!tbcDummy,tag=!tbcIrrelevant] if score TBC Stats matches 1 if entity @p run function glarth:combat/win_attempt
execute if entity @e[tag=tbcEnemy,scores={tbcHealth=1..}] if entity @a[gamemode=adventure,scores={tbcHealth=1..}] as @e[tag=tbcTurn] at @s if score TBC Stats matches 1 run function glarth:combat/turn_init

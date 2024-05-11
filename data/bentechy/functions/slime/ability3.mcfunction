execute @e[tag=slime_boss] ~ ~ ~ tellraw @a[r=20] ["",{"text":"\n[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.3","color":"gray"}]
execute @e[tag=slime_boss] ~ ~ ~ summon slime ~ ~ ~ {Size:0,Tags:["minion"]}
function mctsts:mechanic/sound/slime
execute @e[tag=slime_boss] ~ ~ ~ effect @a[r=20] blindness 3 5 true
execute @e[tag=slime_boss] ~ ~ ~ tellraw @a[r=20] ["",{"text":"\n[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.1","color":"gray"}]
function mctsts:mechanic/sound/slime
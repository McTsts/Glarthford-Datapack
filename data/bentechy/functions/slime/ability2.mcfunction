execute @e[tag=slime_boss] ~ ~ ~ tellraw @a[r=20] ["",{"text":"\n[","color":"dark_gray"},{"translate":"slime","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"slime.2","color":"gray"}]
execute @e[tag=slime_boss] ~ ~ ~ effect @a[r=20] slowness 2 5 true
function mctsts:mechanic/sound/slime
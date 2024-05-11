# Cycle
function glarth:dialogue/gibbs/cycle
# Dialogue
execute unless score quest Stats matches 2 if score cycle Temp matches 0 if entity @s[tag=!a,tag=!g2,tag=!b,tag=!f] run function glarth:dialogue/gibbs/lines/night
execute unless score quest Stats matches 2 if score cycle Temp matches 1 if entity @s[tag=!a,tag=!g2,tag=!b,tag=!f] run function glarth:dialogue/gibbs/lines/day
execute unless score quest Stats matches 2 if entity @s[tag=!a,tag=g2,tag=!b,tag=!f] run function glarth:dialogue/gibbs/lines/generic2
execute unless score quest Stats matches 2 if entity @s[tag=a,tag=!b,tag=!f,tag=!c] run function glarth:dialogue/gibbs/lines/generic3
execute unless score quest Stats matches 2 if entity @s[tag=a,tag=!b,tag=!f,tag=c] run function glarth:dialogue/gibbs/lines/trade3
execute unless score quest Stats matches 2 if entity @s[tag=b,tag=!f,tag=!c] run function glarth:dialogue/gibbs/lines/generic5
execute unless score quest Stats matches 2 if entity @s[tag=b,tag=!f,tag=c] run function glarth:dialogue/gibbs/lines/generic4
execute if score quest Stats matches 2 if entity @s[tag=!d] run function glarth:dialogue/gibbs/lines/sapphire1
execute if score quest Stats matches 2 if entity @s[tag=d,tag=!e] run function glarth:dialogue/gibbs/lines/sapphire2
execute if score quest Stats matches 2 if entity @s[tag=d,tag=e] run function glarth:dialogue/gibbs/lines/sapphire3
execute if entity @s[tag=f] run scoreboard players set garyMode Stats 2
execute if entity @s[tag=f] run scoreboard players set @a[distance=..5] unlockQ10 1
execute if entity @s[tag=f,tag=!g] unless entity @s[tag=mctsts_moved,tag=suso_moved,tag=jerozgen_moved,tag=adri_moved] run function glarth:dialogue/gibbs/lines/sapphire5
execute if entity @s[tag=f,tag=!g] if entity @s[tag=mctsts_moved,tag=suso_moved,tag=jerozgen_moved,tag=adri_moved] run function glarth:dialogue/gibbs/lines/sapphire6
execute if entity @s[tag=h] run function glarth:dialogue/gibbs/lines/sapphire6
# Trades
execute unless score quest Stats matches 2 unless entity @s[tag=f] run function glarth:dialogue/gibbs/trades/all
execute if score quest Stats matches 2 run function glarth:dialogue/gibbs/trades/sapphire
tag @s add g2
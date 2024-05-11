summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,CustomNameVisible:1,CustomName:'""',Tags:["creditsText2","newDup"]}
data modify entity @e[tag=newDup,limit=1] CustomName set from entity @s CustomName
tag @e[tag=newDup] remove newDup
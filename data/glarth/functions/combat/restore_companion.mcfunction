data modify storage glarth:main temp2 set value []
data modify storage glarth:main temp2 append from storage glarth:main temp[0]

execute if data storage glarth:main temp2[{id:"wolf"}] run summon wolf 7 28 -196 {Tags:["tbcRestoreComp"]}
execute if data storage glarth:main temp2[{id:"horse"}] run summon horse 7 28 -196 {Tags:["tbcRestoreComp"]}
execute if data storage glarth:main temp2[{id:"strider"}] run summon strider 7 28 -196 {Tags:["tbcRestoreComp"]}
execute if data storage glarth:main temp2[{id:"pig"}] run summon pig 7 28 -196 {Tags:["tbcRestoreComp"]}
execute if data storage glarth:main temp2[{id:"polar_bear"}] run summon polar_bear 7 28 -196 {Tags:["tbcRestoreComp"]}

data modify entity @e[tag=tbcRestoreComp,limit=1] Owner set from storage glarth:main temp2[0].Owner
data modify entity @e[tag=tbcRestoreComp,limit=1] Brain set from storage glarth:main temp2[0].Brain
data modify entity @e[tag=tbcRestoreComp,limit=1] Sitting set from storage glarth:main temp2[0].Sitting
data modify entity @e[tag=tbcRestoreComp,limit=1] Angry set from storage glarth:main temp2[0].Angry
data modify entity @e[tag=tbcRestoreComp,limit=1] Attributes set from storage glarth:main temp2[0].Attributes
data modify entity @e[tag=tbcRestoreComp,limit=1] InLove set from storage glarth:main temp2[0].InLove
data modify entity @e[tag=tbcRestoreComp,limit=1] CollarColor set from storage glarth:main temp2[0].CollarColor
data modify entity @e[tag=tbcRestoreComp,limit=1] Rotation set from storage glarth:main temp2[0].Rotation
data modify entity @e[tag=tbcRestoreComp,limit=1] Tame set from storage glarth:main temp2[0].Tame
data modify entity @e[tag=tbcRestoreComp,limit=1] Health set from storage glarth:main temp2[0].Health
data modify entity @e[tag=tbcRestoreComp,limit=1] SaddleItem set from storage glarth:main temp2[0].SaddleItem
data modify entity @e[tag=tbcRestoreComp,limit=1] Saddle set from storage glarth:main temp2[0].Saddle
data modify entity @e[tag=tbcRestoreComp,limit=1] PersistenceRequired set from storage glarth:main temp2[0].PersistenceRequired
execute if data storage glarth:main temp2[0].tbcCompID store result score @e[tag=tbcRestoreComp,limit=1] tbcCompID run data get storage glarth:main temp2[0].tbcCompID
scoreboard players operation @e[tag=tbcRestoreComp,limit=1] netherID = id edgeI
data modify entity @e[tag=tbcRestoreComp,limit=1] Pos set from storage glarth:main temp2[0].Pos

tag @e[tag=tbcRestoreComp] remove tbcRestoreComp

data remove storage glarth:main temp[0]
execute if data storage glarth:main temp[0] run function glarth:combat/restore_companion
recipe give @a[score_iBPowder_min=1] minecraft:ender_eye
execute @a ~ ~ ~ stats entity @s set AffectedItems @s iBPowder
execute @a ~ ~ ~ clear @s blaze_powder 0 0 
execute @e[tag=ender_boss] ~ ~ ~ function mctsts:boss/priest/main
#Arena & Portal
execute @a[x=2,y=29,z=-334,r=10,m=2] ~ ~ ~ detect 2 27 -334 minecraft:end_portal_frame facing=north,eye=true tp @s 93 27 -248 -90 0
execute @e[x=119,y=18,z=-248,r=30] ~ ~ ~ detect ~ ~-1 ~ concrete color=black tp @s 116 29 -248
fill 137 40 -274 109 40 -246 minecraft:concrete 15 replace air
#Ender Pearl
execute @a[score_ender_min=1] ~ ~ ~ kill @e[type=ender_pearl]
execute @a[score_ender_min=1] ~ ~ ~ give @s ender_pearl
execute @a[score_ender_min=1] ~ ~ ~ scoreboard players reset @s ender
#Eye
scoreboard players tag @a remove holdsEye 
scoreboard players tag @a add holdsEye {SelectedItem:{id:"minecraft:ender_eye"}}
scoreboard players tag @a remove holdsEye {SelectedItem:{id:"minecraft:ender_eye",tag:{CanPlaceOn:["end_portal_frame"]}}}
replaceitem entity @a[tag=holdsEye] slot.weapon minecraft:ender_eye 1 0 {CanPlaceOn:["end_portal_frame"]}
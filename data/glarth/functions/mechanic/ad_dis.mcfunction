scoreboard players add @s ad_dis 1
tag @a remove thisMap
tag @s add thisMap
execute at @s unless entity @a[gamemode=adventure,distance=0.0001..15] run tag @a[gamemode=spectator,distance=..7] add thisMap
execute if score @s ad_dis matches 80 run advancement grant @a[tag=thisMap] only glarth:map/placeholder/1
execute if score @s ad_dis matches 80 run advancement grant @a[tag=thisMap] only glarth:map/placeholder/2
execute if score @s ad_dis matches 81 run advancement revoke @a[tag=thisMap] only glarth:map/placeholder/1
execute if score @s ad_dis matches 81 run advancement revoke @a[tag=thisMap] only glarth:map/placeholder/2
execute if score @s ad_dis matches 90 if score @s mapPosX matches 1 run recipe give @a[tag=thisMap] glarth:map/end
execute if score @s ad_dis matches 90 if score @s mapPosX matches 2 run recipe give @a[tag=thisMap] glarth:map/farm
execute if score @s ad_dis matches 90 if score @s mapPosX matches 3 run recipe give @a[tag=thisMap] glarth:map/forest
execute if score @s ad_dis matches 90 if score @s mapPosX matches 4 run recipe give @a[tag=thisMap] glarth:map/junkyard
execute if score @s ad_dis matches 90 if score @s mapPosX matches 5 run recipe give @a[tag=thisMap] glarth:map/lake
execute if score @s ad_dis matches 90 if score @s mapPosX matches 6 run recipe give @a[tag=thisMap] glarth:map/mines
execute if score @s ad_dis matches 90 if score @s mapPosX matches 7 run recipe give @a[tag=thisMap] glarth:map/none
execute if score @s ad_dis matches 90 if score @s mapPosX matches 8 run recipe give @a[tag=thisMap] glarth:map/observatory
execute if score @s ad_dis matches 90 if score @s mapPosX matches 9 run recipe give @a[tag=thisMap] glarth:map/path
execute if score @s ad_dis matches 90 if score @s mapPosX matches 10 run recipe give @a[tag=thisMap] glarth:map/swamp
execute if score @s ad_dis matches 90 if score @s mapPosX matches 11 run recipe give @a[tag=thisMap] glarth:map/town
execute if score @s ad_dis matches 90 if score @s mapPosX matches 12 run recipe give @a[tag=thisMap] glarth:map/brewery
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/end
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/farm
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/forest
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/junkyard
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/lake
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/mines
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/none
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/observatory
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/path
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/swamp
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/town
execute if score @s ad_dis matches 90 run recipe take @a[tag=thisMap] glarth:map/brewery
execute if score @s ad_dis matches 90.. unless score @s mapPos = @s mapPosX run tag @s add changeMapPos
execute if entity @s[tag=changeMapPos] run scoreboard players operation @s mapPosX = @s mapPos
execute if entity @s[tag=changeMapPos] run scoreboard players set @s ad_dis -60
execute if entity @s[tag=changeMapPos] run tag @s remove changeMapPos
execute if score @s ad_dis matches 90.. run scoreboard players set @s ad_dis 0
stopsound @a[tag=thisMap] master minecraft:ui.toast.in
stopsound @a[tag=thisMap] master minecraft:ui.toast.out

execute positioned 9 26 -306 run scoreboard players set @s[distance=..20] mapPos 1
execute positioned 4 25 -245 run scoreboard players set @s[distance=..15] mapPos 2
execute positioned 59 27 -238 run scoreboard players set @s[distance=..15] mapPos 3
execute positioned -47 27 -258 run scoreboard players set @s[distance=..10] mapPos 4
execute positioned -1 23 -135 run scoreboard players set @s[distance=..20] mapPos 5
execute positioned 85 33 -182 run scoreboard players set @s[distance=..10] mapPos 6
execute positioned 7 28 -196 run scoreboard players set @s[distance=120..] mapPos 7
execute positioned -81 40 -250 run scoreboard players set @s[distance=..10] mapPos 8
execute positioned 54 25 -188 run scoreboard players set @s[distance=..15] mapPos 9
execute positioned -47 25 -138 run scoreboard players set @s[distance=..20] mapPos 10
execute positioned 7 28 -196 run scoreboard players set @s[distance=..20] mapPos 11
execute positioned -51 26 -193 run scoreboard players set @s[distance=..20] mapPos 12

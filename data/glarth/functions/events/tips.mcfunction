## Tips; First Try
#Tip 1
execute if score time Dis matches 430 as @a[tag=!tip1,gamemode=adventure] run function glarth:mechanic/tip/1
#Tip 2
execute if score time Dis matches 530 as @a[tag=!tip2,gamemode=adventure] run function glarth:mechanic/tip/2
#Tip 4
execute if score time Dis matches 630 as @a[tag=!tip4,gamemode=adventure] run function glarth:mechanic/tip/4
#Tip 11
execute if score time Dis matches 730 as @a[tag=!tip11,gamemode=adventure] run function glarth:mechanic/tip/11
#Tip 12
execute if score time Dis matches 830 as @a[tag=!tip12,gamemode=adventure] run function glarth:mechanic/tip/12
#Tip 21
execute if score time Dis matches 930 as @a[tag=!tip21,gamemode=adventure] run function glarth:mechanic/tip/21
#Tip 10
execute if score time Dis matches 1100 as @a[tag=!tip10,gamemode=adventure] run function glarth:mechanic/tip/10
#Tip 14
execute if score time Dis matches 1230 as @a[tag=!tip14,gamemode=adventure] run function glarth:mechanic/tip/14
#Tip 13
execute if score time Dis matches 1400 as @a[tag=!tip13,gamemode=adventure] run function glarth:mechanic/tip/13
#Tip 20
execute if score time Dis matches 1800 as @a[tag=!tip20,gamemode=adventure] run function glarth:mechanic/tip/20
#Tip 52 (Beacon)
execute if score time Dis matches 2200 as @a[tag=!tip52,tag=!checkedBeacon,gamemode=adventure] run function glarth:mechanic/tip/52
execute if score time Dis matches 2300 as @a[tag=!tip53,tag=!checkedTown,gamemode=adventure] run function glarth:mechanic/tip/53

## Tips; Post First Try - No Victory
#Tip 16
execute if score time Dis matches 430 as @a[tag=!tip16,tag=playedOnce,tag=!wonOnce,gamemode=adventure] run function glarth:mechanic/tip/16

## Tips; Post First Try - Victory (Win Once)
#Tip 18
execute if score time Dis matches 630 as @a[tag=!tip18,tag=wonOnce,gamemode=adventure] run function glarth:mechanic/tip/18
#Tip 17
execute if score time Dis matches 930 as @a[tag=!tip17,tag=wonOnce,gamemode=adventure] run function glarth:mechanic/tip/17
#Tip 19
execute if score time Dis matches 1300 as @a[tag=!tip19,tag=wonOnce,gamemode=adventure] run function glarth:mechanic/tip/19

## Tips; Post Second Try - Victory (Win Twice)
#Tip 30
execute if score time Dis matches 1000 as @a[tag=!tip30,tag=wonTwice,gamemode=adventure] run function glarth:mechanic/tip/30

## Tips; Post Third Try - Victory (Win Thrice)
execute if score time Dis matches 1700 as @a[tag=!tip31,tag=wonThrice,gamemode=adventure] run function glarth:mechanic/tip/31

## Tips; Post First Try - Both
#Tip 22
execute if score time Dis matches 1600 as @a[tag=!tip22,tag=playedOnce,gamemode=adventure] run function glarth:mechanic/tip/22
# Tip 
execute if score time Dis matches 1000 if block -12 30 -202 chest{Items:[{id:"minecraft:paper"}]} as @a[tag=!tip27,gamemode=adventure] run function glarth:mechanic/tip/27



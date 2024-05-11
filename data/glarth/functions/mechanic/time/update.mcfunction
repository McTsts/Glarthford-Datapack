execute unless score noClock Stats matches 1 run function glarth:mechanic/time/clock
execute if score noClock Stats matches 1 run function glarth:mechanic/time/clock_reset
execute if score noClock Stats matches 1 run scoreboard players set  TimeDim 0
execute if score noClock Stats matches 1 run scoreboard players set  Time 0
execute if score noClock Stats matches 1 run team join Clock 
execute if score noClock Stats matches 1 run team modify ClockE suffix ""
execute if score time Dis matches -10000..-1 run function glarth:mechanic/time/x
execute if score time Dis matches 0..99 run function glarth:mechanic/time/0
execute if score time Dis matches 100..199 run function glarth:mechanic/time/1
execute if score time Dis matches 200..299 run function glarth:mechanic/time/2
execute if score time Dis matches 300..399 run function glarth:mechanic/time/3
execute if score time Dis matches 400..499 run function glarth:mechanic/time/4
execute if score time Dis matches 500..599 run function glarth:mechanic/time/5
execute if score time Dis matches 600..699 run function glarth:mechanic/time/6
execute if score time Dis matches 700..799 run function glarth:mechanic/time/7
execute if score time Dis matches 800..899 run function glarth:mechanic/time/8
execute if score time Dis matches 900..999 run function glarth:mechanic/time/9
execute if score time Dis matches 1000..1099 run function glarth:mechanic/time/10
execute if score time Dis matches 1100..1199 run function glarth:mechanic/time/11
execute if score time Dis matches 1200..1299 run function glarth:mechanic/time/12
execute if score time Dis matches 1300..1399 run function glarth:mechanic/time/13
execute if score time Dis matches 1400..1499 run function glarth:mechanic/time/14
execute if score time Dis matches 1500..1599 run function glarth:mechanic/time/15
execute if score time Dis matches 1600..1699 run function glarth:mechanic/time/16
execute if score time Dis matches 1700..1799 run function glarth:mechanic/time/17
execute if score time Dis matches 1800..1899 run function glarth:mechanic/time/18
execute if score time Dis matches 1900..1999 run function glarth:mechanic/time/19
execute if score time Dis matches 2000..2099 run function glarth:mechanic/time/20
execute if score time Dis matches 2100..2199 run function glarth:mechanic/time/21
execute if score time Dis matches 2200..2299 run function glarth:mechanic/time/22
execute if score time Dis matches 2300..2399 if score day Dis matches 1.. if entity @e[tag=area_main,tag=!infmode] run function glarth:mechanic/time/23
execute if score time Dis matches 2300..2399 if score day Dis matches ..0 if entity @e[tag=area_main,tag=!infmode] run function glarth:mechanic/time/23x
execute if score time Dis matches 2300..2399 if entity @e[tag=area_main,tag=infmode] run function glarth:mechanic/time/23x
execute if score time Dis matches 2400..2499 run function glarth:mechanic/time/24

scoreboard players operation time Dis = hour Dis
scoreboard players operation time Dis *= 100 Dis
scoreboard players operation time Dis += minute Dis


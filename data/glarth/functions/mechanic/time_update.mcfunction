#Time Dis
scoreboard players operation timeX Dis = time Dis
scoreboard players remove time Dis 800
scoreboard players set 2400 Const 2400
scoreboard players operation time Dis %= 2400 Const
execute if score time Dis matches 0..59 run function glarth:mechanic/time_update/0
execute if score time Dis matches 100..159 run function glarth:mechanic/time_update/1
execute if score time Dis matches 200..259 run function glarth:mechanic/time_update/2
execute if score time Dis matches 300..359 run function glarth:mechanic/time_update/3
execute if score time Dis matches 400..459 run function glarth:mechanic/time_update/4
execute if score time Dis matches 500..559 run function glarth:mechanic/time_update/5
execute if score time Dis matches 600..659 run function glarth:mechanic/time_update/6
execute if score time Dis matches 700..759 run function glarth:mechanic/time_update/7
execute if score time Dis matches 800..859 run function glarth:mechanic/time_update/8
execute if score time Dis matches 900..959 run function glarth:mechanic/time_update/9
execute if score time Dis matches 1000..1059 run function glarth:mechanic/time_update/10
execute if score time Dis matches 1100..1159 run function glarth:mechanic/time_update/11
execute if score time Dis matches 1200..1259 run function glarth:mechanic/time_update/12
execute if score time Dis matches 1300..1359 run function glarth:mechanic/time_update/13
execute if score time Dis matches 1400..1459 run function glarth:mechanic/time_update/14
execute if score time Dis matches 1500..1559 run function glarth:mechanic/time_update/15
execute if score time Dis matches 1600..1659 run function glarth:mechanic/time_update/16
execute if score time Dis matches 1700..1759 run function glarth:mechanic/time_update/17
execute if score time Dis matches 1800..1859 run function glarth:mechanic/time_update/18
execute if score time Dis matches 1900..1959 run function glarth:mechanic/time_update/19
execute if score time Dis matches 2000..2059 run function glarth:mechanic/time_update/20
execute if score time Dis matches 2100..2159 run function glarth:mechanic/time_update/21
execute if score time Dis matches 2200..2259 run function glarth:mechanic/time_update/22
execute if score time Dis matches 2300..2359 run function glarth:mechanic/time_update/23
scoreboard players operation time Dis = timeX Dis


scoreboard players set @s windCheck 0

scoreboard players set @s windRec 6
execute at @s rotated 0 0 run function glarth:mechanic/wind/check_rec

scoreboard players set @s windRec 6
execute at @s rotated 90 0 run function glarth:mechanic/wind/check_rec

scoreboard players set @s windRec 6
execute at @s rotated -90 0 run function glarth:mechanic/wind/check_rec

scoreboard players set @s windRec 6
execute at @s rotated 180 0 run function glarth:mechanic/wind/check_rec

scoreboard players set @s windRec 6
execute at @s rotated 0 90 run function glarth:mechanic/wind/check_rec

scoreboard players set @s windRec 6
execute at @s rotated 0 -90 run function glarth:mechanic/wind/check_rec

execute if score @s windCheck matches ..2 run function glarth:mechanic/wind/wind
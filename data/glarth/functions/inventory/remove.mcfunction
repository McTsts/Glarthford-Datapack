execute store result score count Inventory run data get storage glarth:main temp.Count
execute store result score slot Inventory run data get storage glarth:main temp.Slot
execute store result storage glarth:main temp.Count byte 1 run scoreboard players remove count Inventory 1
execute if score slot Inventory matches 0 run data remove storage glarth:main inv.all[{Slot:0b}]
execute if score slot Inventory matches 1 run data remove storage glarth:main inv.all[{Slot:1b}]
execute if score slot Inventory matches 2 run data remove storage glarth:main inv.all[{Slot:2b}]
execute if score slot Inventory matches 3 run data remove storage glarth:main inv.all[{Slot:3b}]
execute if score slot Inventory matches 4 run data remove storage glarth:main inv.all[{Slot:4b}]
execute if score slot Inventory matches 5 run data remove storage glarth:main inv.all[{Slot:5b}]
execute if score slot Inventory matches 6 run data remove storage glarth:main inv.all[{Slot:6b}]
execute if score slot Inventory matches 7 run data remove storage glarth:main inv.all[{Slot:7b}]
execute if score slot Inventory matches 8 run data remove storage glarth:main inv.all[{Slot:8b}]
execute if score slot Inventory matches 9 run data remove storage glarth:main inv.all[{Slot:9b}]
execute if score slot Inventory matches 10 run data remove storage glarth:main inv.all[{Slot:10b}]
execute if score slot Inventory matches 11 run data remove storage glarth:main inv.all[{Slot:11b}]
execute if score slot Inventory matches 12 run data remove storage glarth:main inv.all[{Slot:12b}]
execute if score slot Inventory matches 13 run data remove storage glarth:main inv.all[{Slot:13b}]
execute if score slot Inventory matches 14 run data remove storage glarth:main inv.all[{Slot:14b}]
execute if score slot Inventory matches 15 run data remove storage glarth:main inv.all[{Slot:15b}]
execute if score slot Inventory matches 16 run data remove storage glarth:main inv.all[{Slot:16b}]
execute if score slot Inventory matches 17 run data remove storage glarth:main inv.all[{Slot:17b}]
execute if score slot Inventory matches 18 run data remove storage glarth:main inv.all[{Slot:18b}]
execute if score slot Inventory matches 19 run data remove storage glarth:main inv.all[{Slot:19b}]
execute if score slot Inventory matches 20 run data remove storage glarth:main inv.all[{Slot:20b}]
execute if score slot Inventory matches 21 run data remove storage glarth:main inv.all[{Slot:21b}]
execute if score slot Inventory matches 22 run data remove storage glarth:main inv.all[{Slot:22b}]
execute if score slot Inventory matches 23 run data remove storage glarth:main inv.all[{Slot:23b}]
execute if score slot Inventory matches 24 run data remove storage glarth:main inv.all[{Slot:24b}]
execute if score slot Inventory matches 25 run data remove storage glarth:main inv.all[{Slot:25b}]
execute if score slot Inventory matches 26 run data remove storage glarth:main inv.all[{Slot:26b}]
execute if score slot Inventory matches 27 run data remove storage glarth:main inv.all[{Slot:27b}]
execute if score slot Inventory matches 28 run data remove storage glarth:main inv.all[{Slot:28b}]
execute if score slot Inventory matches 29 run data remove storage glarth:main inv.all[{Slot:29b}]
execute if score slot Inventory matches 30 run data remove storage glarth:main inv.all[{Slot:30b}]
execute if score slot Inventory matches 31 run data remove storage glarth:main inv.all[{Slot:31b}]
execute if score slot Inventory matches 32 run data remove storage glarth:main inv.all[{Slot:32b}]
execute if score slot Inventory matches 33 run data remove storage glarth:main inv.all[{Slot:33b}]
execute if score slot Inventory matches 34 run data remove storage glarth:main inv.all[{Slot:34b}]
execute if score slot Inventory matches 35 run data remove storage glarth:main inv.all[{Slot:35b}]
execute if score slot Inventory matches -106 run data remove storage glarth:main inv.all[{Slot:-106b}]
execute if score slot Inventory matches 100 run data remove storage glarth:main inv.all[{Slot:100b}]
execute if score slot Inventory matches 101 run data remove storage glarth:main inv.all[{Slot:101b}]
execute if score slot Inventory matches 102 run data remove storage glarth:main inv.all[{Slot:102b}]
execute if score slot Inventory matches 103 run data remove storage glarth:main inv.all[{Slot:103b}]
data modify storage glarth:main inv.all prepend from storage glarth:main temp
data remove storage glarth:main inv.all[{Count:0b}]
tag @s remove lobbyPCclicked

#tellraw @a ["Y: ",{"score":{"name":"Y","objective":"pcRec"}}]
#tellraw @a ["Ys: ",{"score":{"name":"Ys","objective":"pcRec"}}]
#tellraw @a ["Z: ",{"score":{"name":"Z","objective":"pcRec"}}]

scoreboard players reset pageX pcRec

# Scroll
execute if score Z pcRec matches 103.. run scoreboard players operation height Temp = Y pcRec
execute if score Z pcRec matches 103.. run scoreboard players remove height Temp 25
execute if score Z pcRec matches 103.. run scoreboard players operation height Temp *= 200 Const
execute if score Z pcRec matches 103.. run scoreboard players operation height Temp /= 41 Const
execute if score Z pcRec matches 103.. run scoreboard players set height pcScroll 252
execute if score Z pcRec matches 103.. run scoreboard players operation height pcScroll -= height Temp
execute if score Z pcRec matches 103.. run function glarth:mechanic/lobby/pc/scroll

# Header Links
execute if score Y pcRec matches 84..90 if score Z pcRec matches 23..37 run scoreboard players set pageX pcRec 0
execute if score Y pcRec matches 84..90 if score Z pcRec matches 49..62 run scoreboard players set pageX pcRec 1
execute if score Y pcRec matches 84..90 if score Z pcRec matches 72..92 run scoreboard players set pageX pcRec 2

## Pages
# Home Page
execute if score page pcData matches 0 if score Ys pcRec matches 58..60 if score Z pcRec matches 50..74 run scoreboard players set pageX pcRec 3
execute if score page pcData matches 0 if score Ys pcRec matches 28..30 if score Z pcRec matches 50..74 run scoreboard players set pageX pcRec 4
execute if score page pcData matches 0 if score Ys pcRec matches -2..00 if score Z pcRec matches 50..74 run scoreboard players set pageX pcRec 6
execute if score page pcData matches 0 if score Ys pcRec matches -12..-9 if score Z pcRec matches 77..85 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 0 if score Ys pcRec matches -12..-9 if score Z pcRec matches 77..85 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/news?m=111&r=pc"}}]

# Maps Page
execute if score page pcData matches 1 if score Ys pcRec matches 55..78 if score Z pcRec matches 4..47 run scoreboard players set pageX pcRec 3
execute if score page pcData matches 1 if score Ys pcRec matches 55..78 if score Z pcRec matches 56..98 run scoreboard players set pageX pcRec 4
execute if score page pcData matches 1 if score Ys pcRec matches 26..50 if score Z pcRec matches 4..47 run scoreboard players set pageX pcRec 5
execute if score page pcData matches 1 if score Ys pcRec matches 26..50 if score Z pcRec matches 56..98 run scoreboard players set pageX pcRec 6
execute if score page pcData matches 1 if score Ys pcRec matches -1..21 if score Z pcRec matches 4..47 run scoreboard players set pageX pcRec 7
execute if score page pcData matches 1 if score Ys pcRec matches -1..21 if score Z pcRec matches 56..98 run scoreboard players set pageX pcRec 8
execute if score page pcData matches 1 if score Ys pcRec matches -12..-9 if score Z pcRec matches 76..84 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 1 if score Ys pcRec matches -12..-9 if score Z pcRec matches 76..84 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps?m=111&r=pc"}}]

# About Us Page
execute if score page pcData matches 2 if score Ys pcRec matches 2..6 if score Z pcRec matches 12..47 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 2 if score Ys pcRec matches 2..6 if score Z pcRec matches 12..47 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/contact?m=111&r=pc"}}]
execute if score page pcData matches 2 if score Ys pcRec matches 2..6 if score Z pcRec matches 55..90 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 2 if score Ys pcRec matches 2..6 if score Z pcRec matches 55..90 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://discord.gg/qZ3SCcc"}}]
execute if score page pcData matches 2 if score Ys pcRec matches -12..-9 if score Z pcRec matches 74..82 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 2 if score Ys pcRec matches -12..-9 if score Z pcRec matches 74..82 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/about?m=111&r=pc"}}]

## Maps
# Isolated Isle
execute if score page pcData matches 3 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 3 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=VZlHvhqRgEo"}}]
execute if score page pcData matches 3 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 3 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/isolated_isle?m=111&r=pc"}}]
execute if score page pcData matches 3 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 3 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/isolated_isle?m=111&r=pc"}}]

# Sleepless Night
execute if score page pcData matches 4 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 4 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/sleepless_night?m=111&r=pc"}}]
execute if score page pcData matches 4 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 4 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/sleepless_night?m=111&r=pc"}}]

# TNT Race
execute if score page pcData matches 5 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 5 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=7_ont0DQvKs"}}]
execute if score page pcData matches 5 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 5 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/tnt_race?m=111&r=pc"}}]
execute if score page pcData matches 5 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 5 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/tnt_race?m=111&r=pc"}}]

# Heart Rush
execute if score page pcData matches 6 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 6 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=otKH3awnkhc"}}]
execute if score page pcData matches 6 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 6 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/heart_rush_2?m=111&r=pc"}}]
execute if score page pcData matches 6 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 6 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/heart_rush_2?m=111&r=pc"}}]

# Bitdepth
execute if score page pcData matches 7 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 7 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/bitdepth?m=111&r=pc"}}]
execute if score page pcData matches 7 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 7 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/bitdepth?m=111&r=pc"}}]

# Overshadow
execute if score page pcData matches 8 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 8 if score Ys pcRec matches 29..33 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=-XPqkTWVw_A"}}]
execute if score page pcData matches 8 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 8 if score Ys pcRec matches 23..27 if score Z pcRec matches 53..86 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/overshadow?m=111&r=pc"}}]
execute if score page pcData matches 8 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score page pcData matches 8 if score Ys pcRec matches -12..-9 if score Z pcRec matches 73..81 run tellraw @s ["\n",{"translate":"lobby.click_here","clickEvent":{"action":"open_url","value":"https://www.crowdford.com/maps/overshadow?m=111&r=pc"}}]

## Page Switch
execute if score pageX pcRec matches 0.. run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1.5
execute if score pageX pcRec matches 0.. run scoreboard players operation page pcData = pageX pcRec
execute if score pageX pcRec matches 0.. run function glarth:mechanic/lobby/pc/page
## Technical

#Progress
execute if score quest Stats matches 0 run function glarth:mechanic/progress/0
execute if score quest Stats matches 1 run function glarth:mechanic/progress/1
execute if score quest Stats matches 2 run function glarth:mechanic/progress/2
execute if score quest Stats matches 3 run function glarth:mechanic/progress/3
execute if score quest Stats matches 4 if score garyMode Stats matches ..1 run function glarth:mechanic/progress/4
execute if score quest Stats matches 4 if score garyMode Stats matches 2.. if score endStarted Stats matches ..0 run function glarth:mechanic/progress/10
execute if score quest Stats matches 4 if score garyMode Stats matches 2.. if score endStarted Stats matches 1.. run function glarth:mechanic/progress/4
execute if score quest Stats matches 5 run function glarth:mechanic/progress/5
execute if score quest Stats matches 6 run function glarth:mechanic/progress/6
execute if score quest Stats matches 7 run function glarth:mechanic/progress/7
execute if score quest Stats matches 8 run function glarth:mechanic/progress/8
execute if score quest Stats matches 9 run function glarth:mechanic/progress/9

execute unless score quest Stats matches 7 unless score endStarted Stats matches 1 run function glarth:mechanic/time_update
function glarth:mechanic/item
function glarth:mechanic/time/update
function glarth:mechanic/advancements
execute unless score quests Stats matches 0 run function glarth:mechanic/hint
execute unless score quests Stats matches 0 run function glarth:mechanic/sapling/main



# Quest Update
execute if score quest Stats matches 0 run function glarth:mechanic/quest/0u
execute if score quest Stats matches 1 run function glarth:mechanic/quest/1u
execute if score quest Stats matches 2 run function glarth:mechanic/quest/2u
execute if score quest Stats matches 3 run function glarth:mechanic/quest/3u
execute if score quest Stats matches 4 run function glarth:mechanic/quest/4u
execute if score quest Stats matches 5 run function glarth:mechanic/quest/5u
execute if score quest Stats matches 6 run function glarth:mechanic/quest/6u
execute if score quest Stats matches 7 run function glarth:mechanic/quest/7u
execute if score quest Stats matches 8 run function glarth:mechanic/quest/8u
execute if score quest Stats matches 9 run function glarth:mechanic/quest/9u
execute if score quest Stats matches 10 run function glarth:mechanic/quest/10u
execute if score quest Stats matches 11 run function glarth:mechanic/quest/11u


# Fix Gates
execute if block -20 29 -196 minecraft:spruce_fence run fill -20 31 -194 -20 30 -198 minecraft:spruce_fence replace minecraft:barrier
execute if block 7 29 -223 minecraft:spruce_fence run fill 5 31 -223 9 30 -223 minecraft:spruce_fence replace minecraft:barrier
execute if block 34 29 -196 minecraft:spruce_fence run fill 34 31 -198 34 30 -194 minecraft:spruce_fence replace minecraft:barrier


# AS Loader
execute unless score timer cedric matches 0.. run function glarth:mechanic/as_loader
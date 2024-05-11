#Progress
team join Progress 
team join ProgressE 
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
team modify Progress suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.progress"}]
execute if score quest Stats matches 3 run team modify ProgressE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.progress"}]
execute if score quest Stats matches 8 run team modify ProgressE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.progress"}]
execute if score quest Stats matches 4 run team modify ProgressE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.progress","font":"custom:ender"}]

# Bar
team join Bar 
team join Bar 
team join BarB 
team join BarB 
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
execute if score timer end matches 1 run scoreboard players set progress Dis 25
execute if score barColor Stats matches 0 run function glarth:mechanic/progress/bar_normal
execute if score barColor Stats matches 1 run function glarth:mechanic/progress/bar_end
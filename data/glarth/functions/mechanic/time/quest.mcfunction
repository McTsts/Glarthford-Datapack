#Main Quest
team join CurrentTale 
team join CurrentTaleE 
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
team modify CurrentTale suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.ct"}]
execute if score quest Stats matches 3 run team modify CurrentTaleE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.ct"}]
execute if score quest Stats matches 4 run team modify CurrentTaleE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.ct","font":"custom:ender"}]
execute if score quest Stats matches 8 run team modify CurrentTaleE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.ct"}]
#->
team join CurrentTaleN 
team join CurrentTaleNE 
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
execute if score quest Stats matches 0 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.0"}]
execute if score quest Stats matches 1 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.1"}]
execute if score quest Stats matches 2 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.2"}]
execute if score quest Stats matches 3 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.3"}]
execute if score quest Stats matches 3 run team modify CurrentTaleNE suffix [" ",{"color":"gray","translate":"sidebar.tale.3"}]
execute if score quest Stats matches 4 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.4"}]
execute if score quest Stats matches 4 run team modify CurrentTaleNE suffix [" ",{"color":"gray","translate":"sidebar.tale.4","font":"custom:ender"}]
execute if score quest Stats matches 5 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.5"}]
execute if score quest Stats matches 6 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.6"}]
execute if score quest Stats matches 7 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.7"}]
execute if score quest Stats matches 8 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.8"}]
execute if score quest Stats matches 8 run team modify CurrentTaleNE suffix [" ",{"color":"gray","translate":"sidebar.tale.8"}]
execute if score quest Stats matches 9 run team modify CurrentTaleN suffix [" ",{"color":"gray","translate":"sidebar.tale.9"}]
#Empty
#Objective
team join Objective 
team join ObjectiveE 
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
team modify Objective suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.obj"}]
execute if score quest Stats matches 3 run team modify ObjectiveE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.obj"}]
execute if score quest Stats matches 4 run team modify ObjectiveE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.obj","font":"custom:ender"}]
execute if score quest Stats matches 8 run team modify ObjectiveE suffix [" ",{"bold":true,"color":"gray","translate":"sidebar.obj"}]
#->
team join ObjectiveN 
team join ObjectiveN2 
team join ObjectiveNE 
team join ObjectiveNE2 
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
execute if score quest Stats matches 0 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.0.1"}]
execute if score quest Stats matches 0 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.0.2"}]
execute if score quest Stats matches 1 unless entity @a[scores={playerid=1,charSpouse=2}] run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.1.a.1"}]
execute if score quest Stats matches 1 unless entity @a[scores={playerid=1,charSpouse=2}] run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.1.a.2"}]
execute if score quest Stats matches 1 if entity @a[scores={playerid=1,charSpouse=2}] run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.1.b.1"}]
execute if score quest Stats matches 1 if entity @a[scores={playerid=1,charSpouse=2}] run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.1.b.2"}]
execute if score quest Stats matches 2 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.2.1"}]
execute if score quest Stats matches 2 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.2.2"}]
execute if score quest Stats matches 3 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.3.1"}]
execute if score quest Stats matches 3 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.3.2"}]
execute if score quest Stats matches 3 run team modify ObjectiveNE suffix [" ",{"color":"gray","translate":"sidebar.obj.3.1"}]
execute if score quest Stats matches 3 run team modify ObjectiveNE2 suffix [" ",{"color":"gray","translate":"sidebar.obj.3.2"}]
execute if score quest Stats matches 4 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.4.1"}]
execute if score quest Stats matches 4 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.4.2"}]
execute if score quest Stats matches 4 run team modify ObjectiveNE suffix [" ",{"color":"gray","translate":"sidebar.obj.4.1","font":"custom:ender"}]
execute if score quest Stats matches 4 run team modify ObjectiveNE2 suffix [" ",{"color":"gray","translate":"sidebar.obj.4.2","font":"custom:ender"}]
execute if score quest Stats matches 5 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.5.1"}]
execute if score quest Stats matches 5 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.5.2"}]
execute if score quest Stats matches 6 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.6.1"}]
execute if score quest Stats matches 6 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.6.2"}]
execute if score quest Stats matches 7 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.7.1"}]
execute if score quest Stats matches 7 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.7.2"}]
execute if score quest Stats matches 8 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.8.1"}]
execute if score quest Stats matches 8 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.8.2"}]
execute if score quest Stats matches 8 run team modify ObjectiveNE suffix [" ",{"color":"gray","translate":"sidebar.obj.8.1"}]
execute if score quest Stats matches 8 run team modify ObjectiveNE2 suffix [" ",{"color":"gray","translate":"sidebar.obj.8.2"}]
execute if score quest Stats matches 9 run team modify ObjectiveN suffix [" ",{"color":"gray","translate":"sidebar.obj.9.1"}]
execute if score quest Stats matches 9 run team modify ObjectiveN2 suffix [" ",{"color":"gray","translate":"sidebar.obj.9.2"}]

#Progress
function glarth:mechanic/progress/progress

#Empty
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
scoreboard players set  Time 0
scoreboard players set  TimeDim 0
scoreboard players set  Time 0
scoreboard players set  TimeDim 0

# Dimension Title
execute if score quest Stats matches 3 run scoreboard objectives modify TimeDim displayname ["",{"translate":"sidebar.time","color":"gray","bold":true},{"text":" "},{"text":"±±:±±","color":"gold","obfuscated":true},{"translate":"sidebar.timesp"}]
execute if score quest Stats matches 8 run scoreboard objectives modify TimeDim displayname ["",{"translate":"sidebar.time","color":"gray","bold":true},{"text":" "},{"text":"±±:±±","color":"gold","obfuscated":true},{"translate":"sidebar.timesp"}]
execute if score quest Stats matches 4 run scoreboard objectives modify TimeDim displayname ["",{"translate":"sidebar.time","color":"gray","bold":true,"font":"custom:ender"},{"text":" "},{"text":"","color":"gold","obfuscated":true},{"translate":"sidebar.timesp"}]
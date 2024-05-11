scoreboard players add timer end 1
execute if score lastQuest Stats matches 0 run function glarth:mechanic/end/0
execute if score lastQuest Stats matches 1 run function glarth:mechanic/end/1
execute if score lastQuest Stats matches 2 run function glarth:mechanic/end/2
execute if score lastQuest Stats matches 3 run function glarth:mechanic/end/3
execute if score lastQuest Stats matches 4 if score endStarted Stats matches 1.. run function glarth:mechanic/end/4
execute if score lastQuest Stats matches 4 if score endStarted Stats matches ..0 run function glarth:mechanic/end/10
execute if score lastQuest Stats matches 5 run function glarth:mechanic/end/5
execute if score lastQuest Stats matches 6 run function glarth:mechanic/end/6
execute if score lastQuest Stats matches 7 run function glarth:mechanic/end/7
execute if score lastQuest Stats matches 8 run function glarth:mechanic/end/8
execute if score lastQuest Stats matches 9 run function glarth:mechanic/end/9
execute if score lastQuest Stats matches 11 run function glarth:mechanic/end/11
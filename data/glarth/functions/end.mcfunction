execute if score game Stats matches 1.. run title @a title {"text":"Tale Stopped","color":"red"}
execute if score game Stats matches 1.. run title @a subtitle [{"text":"Ended by ","color":"gray"},{"selector":"@s"}]
execute if score game Stats matches 1.. run function glarth:mechanic/end_game
schedule function glarth:mechanic/clear_delay 10
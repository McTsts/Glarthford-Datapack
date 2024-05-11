#doing display calculation 
scoreboard players set bar= load_bar.main 100
scoreboard players operation bar= load_bar.main *= current= load_bar.main
scoreboard players operation bar= load_bar.main /= total= load_bar.main

#generating entity
function load_bar:entity

#displaying
execute if score position= load_bar.main matches 1 run title @a[tag=show_loading_bar] actionbar {"selector":"0-0-0-0-a5462"}
execute if score position= load_bar.main matches 2 run title @a[tag=show_loading_bar] subtitle {"selector":"0-0-0-0-a5462"}
execute if score position= load_bar.main matches 3 run title @a[tag=show_loading_bar] title {"selector":"0-0-0-0-a5462"}

kill 0-0-0-0-a5462
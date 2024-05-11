execute if score running winter matches 1 run function glarth:mechanic/seasons/main

execute if score running winter matches 1 if score stage winter matches 0 run function glarth:mechanic/seasons/main20

execute if score running winter matches 1 if score stage winter matches 1 run function glarth:mechanic/seasons/main20

execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 0 run function glarth:mechanic/seasons/main80
execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 0 run function glarth:mechanic/seasons/main80
execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 0 run function glarth:mechanic/seasons/main80
execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 0 run function glarth:mechanic/seasons/main80

execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 1 run function glarth:mechanic/seasons/main80
execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 1 run function glarth:mechanic/seasons/main80

execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 2 run function glarth:mechanic/seasons/main40

execute if score running winter matches 1 if score stage winter matches 2 if score delay tps matches 3 run function glarth:mechanic/seasons/main10

execute if score running winter matches 1 run title @a times 0 20 0
execute if score running winter matches 1 run title @a title {"translate":"loading","italic":true}

scoreboard players operation current= load_bar.main = count winter
function load_bar:display

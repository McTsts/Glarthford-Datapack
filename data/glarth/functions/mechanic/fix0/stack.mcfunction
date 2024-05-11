# Very Likely Items
execute store result score countT Temp run clear @s #all{0added:1} 0
execute if score countT Temp matches 1.. run function glarth:mechanic/fix0/stack/_1

# Likely Items
execute store result score countT Temp run clear @s #all{0added:1} 0
execute if score countT Temp matches 1.. run function glarth:mechanic/fix0/stack/_2

# Unlikely Items
execute store result score countT Temp run clear @s #all{0added:1} 0
execute if score countT Temp matches 1.. run function glarth:mechanic/fix0/stack/_3

# Very Unlikely Items
execute store result score countT Temp run clear @s #all{0added:1} 0
execute if score countT Temp matches 1.. run function glarth:mechanic/fix0/stack/_4

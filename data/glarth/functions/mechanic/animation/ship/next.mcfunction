scoreboard players set r Random 4
execute if score wind Stats matches 2.. run scoreboard players set r Random 5
function glarth:util/randomish
execute if score n Random matches 3 run scoreboard players set shipX Animation 1
execute if score n Random matches 4 unless entity @a[x=-10,y=27,z=-129,distance=..10,gamemode=adventure] run scoreboard players set shipX Animation 2
execute if score n Random matches 4 if entity @a[x=-10,y=27,z=-129,distance=..10,gamemode=adventure] run scoreboard players set shipX Animation 1
execute if score n Random matches 5 unless entity @a[x=-10,y=27,z=-129,distance=..10,gamemode=adventure] run scoreboard players set shipX Animation 3
execute if score n Random matches 5 if entity @a[x=-10,y=27,z=-129,distance=..10,gamemode=adventure] run scoreboard players set shipX Animation 1
scoreboard players set shipAnim Animation 0
execute if score shipX Animation matches 0 run scoreboard players set shipX Animation 1
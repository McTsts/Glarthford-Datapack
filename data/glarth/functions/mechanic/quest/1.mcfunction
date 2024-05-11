execute as @e[tag=roberto_boss,type=zombie] run function glarth:combat/boss_pve/roberto/main
execute as @a[x=-8,y=25,z=-202,distance=..3] if block -8 26 -201 #minecraft:doors[open=true] run tag @e[tag=roberto_fake,type=armor_stand] add run_off

#Progress Trackers
tag @a[x=98,y=33,z=-167,distance=..1.5] add inSewer

# Progress Tracker New
execute positioned 81 32 -186 run tag @a[distance=..7] add enteredMines
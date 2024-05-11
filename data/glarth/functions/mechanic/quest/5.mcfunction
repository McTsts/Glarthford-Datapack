execute as @e[tag=slime_boss,type=slime] run function glarth:combat/boss_pve/slime/main
execute as @r[x=-4,y=19,z=-109,distance=..10] run function glarth:mechanic/bucket
#Slime Helmet
tag @a remove hasSH
tag @a[nbt={Inventory:[{id:"minecraft:chainmail_helmet",Slot:103b,components:{"minecraft:custom_data":{custom:"slime_helmet"}}}]}] add hasSH 
effect give @a[x=-1,y=19,z=-122,distance=..7,tag=!hasSH] poison 1 10 true
effect give @a[x=-8,y=46,z=-83,distance=..7,tag=!hasSH] poison 1 10 true
effect give @a[x=-1,y=19,z=-113,distance=..7,tag=!hasSH] poison 1 120 true
effect give @a[x=-9,y=39,z=-89,distance=..7,tag=!hasSH] poison 1 120 true
effect give @a[x=-11,y=18,z=-116,distance=..7,tag=!hasSH] poison 1 10 true
effect give @a[x=-5,y=20,z=-104,distance=..7,tag=!hasSH] instant_damage 1 10 true
effect give @a[x=-6,y=31,z=-96,distance=..7,tag=!hasSH] instant_damage 1 10 true
effect give @a[x=13,y=27,z=-98,distance=..4,tag=!hasSH] instant_damage 1 10 true
effect give @a[x=2,y=28,z=-101,distance=..15,tag=!hasSH] poison 1 10 true
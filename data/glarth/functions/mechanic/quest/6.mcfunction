execute as @e[tag=grimsbane_boss,type=zombie] run function glarth:combat/boss_pve/grimsbane/main

execute as @e[tag=tower_lower] unless entity @s[scores={Animation=1150..}] run function glarth:mechanic/animation/tower_lower
execute as @e[tag=tower_lower] if entity @s[scores={Animation=1150..}] run scoreboard players add @s Animation 2
execute as @e[tag=tower_upper] unless entity @s[scores={Animation=200..}] run function glarth:mechanic/animation/tower_upper
execute as @e[tag=tower_upper] if entity @s[scores={Animation=200..}] run scoreboard players add @s Animation 3

execute as @a at @s as @e[tag=pmGlowing,type=armor_stand,distance=..15] run data merge entity @s {Glowing:0b}
execute as @a[nbt={SelectedItem:{id:"minecraft:phantom_membrane"}}] at @s as @e[tag=pmGlowing,type=armor_stand,distance=..12] run data merge entity @s {Glowing:1b}
execute as @a[nbt={Inventory:[{id:"minecraft:phantom_membrane",Slot:-106b}]}] at @s as @e[tag=pmGlowing,type=armor_stand,distance=..12] run data merge entity @s {Glowing:1b}

execute positioned -74 32 -250 if entity @a[distance=..2.5,gamemode=adventure] run setblock -71 32 -252 fire
execute positioned -74 32 -250 if entity @a[distance=..2.5,gamemode=adventure] run setblock -71 32 -248 fire
execute positioned -74 32 -250 if entity @a[distance=..2.5,gamemode=adventure] run data merge entity @e[type=armor_stand,tag=grimsbane,distance=..16,limit=1] {CustomNameVisible:1}
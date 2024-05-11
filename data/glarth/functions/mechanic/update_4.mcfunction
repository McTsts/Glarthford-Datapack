## Other

#Field Gate
execute if score gate Stats matches 0 run setblock 9 26 -248 dark_prismarine_slab[type=top]
execute if score gate Stats matches 0 run setblock 9 27 -248 minecraft:barrier
execute if score gate Stats matches 1 run setblock 9 26 -248 minecraft:acacia_button[face=ceiling,facing=north,powered=true]
execute if score gate Stats matches 1 run setblock 9 27 -248 minecraft:air

#Tip 3
tag @a[tag=!tip3,nbt={Inventory:[{tag:{CustomPotionColor: 36331}}]}] add haspot 
execute as @a[tag=haspot,tag=!tip3] run function glarth:mechanic/tip/3
tag @a[tag=haspot] remove haspot

#Tip 7
tag @a[tag=!tip7,nbt={Inventory:[{tag:{CustomPotionEffects:[{Duration:1200,Id:26}]}}]}] add haspot2
execute as @a[tag=haspot2,tag=!tip7] run function glarth:mechanic/tip/7
tag @a[tag=haspot2] remove haspot2

#Tip 8
tag @a[tag=!tip8,nbt={Inventory:[{tag:{CustomPotionColor: 10936063}}]}] add haspot3
execute as @a[tag=haspot3,tag=!tip8] run function glarth:mechanic/tip/8
tag @a[tag=haspot3] remove haspot3

#Pickup
execute as @a[gamemode=adventure] at @s as @e[tag=pickup_name,distance=4.5..] run data merge entity @s {CustomNameVisible:0}
execute as @a[gamemode=adventure] at @s as @e[tag=pickup_name,distance=..4.5] run data merge entity @s {CustomNameVisible:1}

#Final Fixes
effect give @a[x=92,y=19,z=-133,distance=..5] night_vision 999999 120 true
tag @e[type=item,nbt={Item:{id:"minecraft:spruce_fence"}}] add kill 
tag @e[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}] add kill 
tag @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] add kill 
kill @e[tag=kill]
scoreboard players add @a 0 0

# TTEXTT Notes
execute if entity @e[tag=ttextt,tag=a,type=armor_stand] run function glarth:mechanic/animation/notes

# Fire
execute as @e[type=armor_stand,tag=fire] run data merge entity @s {Fire:100s}


# If everyone in other dimension dont pass time
execute if score inWorld dimension matches 0 run scoreboard players remove tick Dis 20

# Wolf
execute as @e[type=wolf] if data entity @s Leash at @s as @a[gamemode=adventure,distance=..20] run function glarth:mechanic/leashed


# Strider Fix
execute as @e[type=strider] unless score @s netherID = id edgeI run data merge entity @s {DeathTime:19s,Health:0.0f}
execute as @e[type=hoglin] unless score @s netherID = id edgeI run data merge entity @s {DeathTime:19s,Health:0.0f}
execute as @e[type=horse] unless score @s netherID = id edgeI run data merge entity @s {DeathTime:19s,Health:0.0f}
execute as @e[type=wolf] unless score @s netherID = id edgeI run data merge entity @s {DeathTime:19s,Health:0.0f}
execute as @e[type=pig] unless score @s netherID = id edgeI run data merge entity @s {DeathTime:19s,Health:0.0f}

# Arrow Kill
execute as @e[type=arrow] if data entity @s inBlockState{Name:"minecraft:barrier"} run kill @s

# Egg Fix 
execute as @e[type=item,nbt={Item:{id:"minecraft:egg"}}] at @s if block ~ ~-1 ~ barrier run kill @s

# mouse air
execute as @e[type=ocelot] run data merge entity @s {Air:300s}
execute as @e[tag=mouseAS] at @s unless entity @e[tag=mouse,distance=..3] run kill @s
execute as @e[tag=mouse] at @s unless entity @e[tag=mouseAS,distance=..3] run kill @s

# crossbowfix
execute as @a[gamemode=adventure] run function glarth:mechanic/crossbowfix

# tulip drop
function glarth:mechanic/tulip_drop

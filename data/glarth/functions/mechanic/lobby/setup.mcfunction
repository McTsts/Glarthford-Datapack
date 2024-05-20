execute as @e[type=!player,tag=!area_main,tag=!end_scene,tag=!board_entity,tag=!chair] unless entity @s[tag=charQ,tag=lobby] unless entity @s[tag=charQB,tag=lobby] run function glarth:mechanic/kill
summon minecraft:villager 186 25 -115 {Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0},{Name:"generic.knockback_resistance",Base:1000},{Name:"generic.armor",Base:1000}],active_effects:[{id:"minecraft:resistance",amplifier:120,duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],NoAI:1,NoGravity:1,Silent:1b,Tags:["lobby","lobby_hit","previous"],Team:"noc",Career:2,Inventory:[],Willing:0b,Offers:{Recipes:[]},Profession:0,CareerLevel:1,Riches:0,PersistenceRequired:1b}
summon minecraft:villager 186 25 -109 {Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:0},{Name:"generic.knockback_resistance",Base:1000},{Name:"generic.armor",Base:1000}],active_effects:[{id:"minecraft:resistance",amplifier:120,duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],NoAI:1,NoGravity:1,Silent:1b,Tags:["lobby","lobby_hit","next"],Team:"noc",Career:2,Inventory:[],Willing:0b,Offers:{Recipes:[]},Profession:0,CareerLevel:1,Riches:0,PersistenceRequired:1b}

summon area_effect_cloud 163.0 24.3 -94.0 {Radius:0.0f,Duration:2147483647,Tags:["lobby"],CustomName:'{"translate":"lobby.options.combat","color":"white"}',CustomNameVisible:1}
summon area_effect_cloud 163.0 24.3 -121.7 {Radius:0.0f,Duration:2147483647,Tags:["lobby"],CustomName:'{"translate":"lobby.selection.title","color":"white"}',CustomNameVisible:1}
summon minecraft:armor_stand 163.00 24.00 -94.50 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":282}}],Rotation:[0.0f,0.0f],Tags:["lobby"],Invisible:1,NoGravity:1,Invulnerable:1,Marker:1}
summon minecraft:armor_stand 168.50 25.00 -107.00 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":282}}],Rotation:[-90.0f,0.0f],Tags:["lobby"],Invisible:1,NoGravity:1,Invulnerable:1,Marker:1}
summon minecraft:armor_stand 168.50 25.00 -116.00 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":282}}],Rotation:[-90.0f,0.0f],Tags:["lobby"],Invisible:1,NoGravity:1,Invulnerable:1,Marker:1}

summon area_effect_cloud 186 25 -115 {Radius:0.0f,Duration:2147483647,Tags:["lobby"],CustomName:'{"translate":"lobby.previous","italic":true,"bold":true,"color":"gray"}',CustomNameVisible:1}
summon area_effect_cloud 186 25 -109 {Radius:0.0f,Duration:2147483647,Tags:["lobby"],CustomName:'{"translate":"lobby.next","italic":true,"bold":true,"color":"gray"}',CustomNameVisible:1}
summon area_effect_cloud 192 24.6 -112 {Radius:0.0f,Duration:2147483647,Tags:["lobby"],CustomName:'{"translate":"lobby.start","bold":true,"color":"gray"}',CustomNameVisible:1}
summon area_effect_cloud 187 24.3 -112 {Radius:0.0f,Duration:2147483647,Tags:["lobby","quest_name"],CustomName:'{"translate":"lobby.quest.x","underlined":true,"bold":true,"color":"gold"}',CustomNameVisible:1}
summon area_effect_cloud 187 24 -112 {Radius:0.0f,Duration:2147483647,Tags:["lobby","quest_locked"],CustomName:'{"translate":"lobby.quest.locked","color":"red","font":"custom:small","with":[{"text":"?"}]}',CustomNameVisible:1}

function glarth:mechanic/lobby/pc/setup


schedule function glarth:sign/combat/change 10t
schedule function glarth:sign/graphics/change 10t

schedule function glarth:mechanic/lobby/change 20
schedule function glarth:mechanic/lobby/boss/setup 20
schedule function glarth:mechanic/lobby/music_sel/reset 300

scoreboard players set bossRe Stats -1
scoreboard objectives setdisplay sidebar 

clear @a[gamemode=spectator]
clear @a[gamemode=adventure]

# Chairs
effect give @e[type=pig,tag=chair] minecraft:invisibility infinite 120 true
execute positioned 159 23.61 -112 unless entity @e[type=pig,tag=chair,distance=..1] run summon pig ~ ~ ~ {NoAI:1,Silent:1b,Invulnerable:1,Team:"noc",Saddle:1,Rotation:[-90.0f,0.0f],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],Tags:["chair"]}
execute positioned 158 23.61 -101 unless entity @e[type=pig,tag=chair,distance=..1] run summon pig ~ ~ ~ {NoAI:1,Silent:1b,Invulnerable:1,Team:"noc",Saddle:1,Rotation:[-90.0f,0.0f],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],Tags:["chair"]}
execute positioned 167 23.61 -101 unless entity @e[type=pig,tag=chair,distance=..1] run summon pig ~ ~ ~ {NoAI:1,Silent:1b,Invulnerable:1,Team:"noc",Saddle:1,Rotation:[90.0f,0.0f],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],Tags:["chair"]}

execute as @a run function glarth:team/join/player
schedule function glarth:mechanic/lobby/dev_team 100t

execute unless entity @e[tag=board] run function board:lobby_table

kill @e[tag=charQ]
kill @e[tag=charQB]
execute as @a[scores={lobbySelection=1},gamemode=adventure] run function glarth:mechanic/lobby/selection/select

weather clear
gamerule fireDamage false
gamerule drowningDamage false
gamerule fallDamage false

clone 165 24 -101 165 24 -101 165 24 -101 replace force
clone 168 25 -107 168 25 -107 168 25 -107 replace force

# Reload
schedule clear glarth:mechanic/lobby/reload
schedule function glarth:mechanic/lobby/reload 200t


# Block Reset
fill 179 32 -113 171 32 -113 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
fill 171 32 -111 179 32 -111 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock 158 24 -108 minecraft:dark_oak_fence_gate[facing=south,in_wall=false,open=false,powered=false]
setblock 158 24 -116 minecraft:dark_oak_fence_gate[facing=north,in_wall=false,open=false,powered=false]


# Ad map
advancement revoke @a everything
advancement grant @a only glarth:empty/root
advancement grant @a only glarth:empty/end
advancement grant @a only glarth:background/default
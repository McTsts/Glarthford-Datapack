setblock -48 90 -645 minecraft:iron_trapdoor
data merge entity @e[tag=ender_priest,limit=1] {ArmorItems:[]}
fill -50 93 -642 -47 90 -642 minecraft:barrier
fill -47 93 -642 -47 92 -642 minecraft:jungle_fence
fill -50 93 -642 -50 92 -642 minecraft:jungle_fence
fill -51 91 -642 -46 90 -642 minecraft:jungle_fence replace air
fill -49 91 -641 -48 90 -641 minecraft:jungle_fence
function glarth:mechanic/dim_end/forcefield
function glarth:dialogue/ender_priest/lines/lose2

tag @e[tag=ender_priest] add b

particle minecraft:dragon_breath -48.0 90.00 -644.5 2 2 2 0.1 100

kill @e[type=end_crystal]
summon minecraft:end_crystal -20 85.5 -609 {Invulnerable:1,ShowBottom:0b,BeamTarget:{X:-47,Y:90,Z:-643},Tags:["eCrystal1","forcefield"],Glowing:1}
summon minecraft:end_crystal -84 81.5 -600 {Invulnerable:1,ShowBottom:0b,BeamTarget:{X:-50,Y:90,Z:-643},Tags:["eCrystal2","forcefield"],Glowing:1}
team join light_purple @e[type=minecraft:end_crystal]

kill @e[tag=endFFgas]
kill @e[tag=endFFghast]
summon minecraft:armor_stand -48.00 89.5 -642.00 {NoGravity:1,Invisible:1,Marker:1,Tags:["endFFgas","forcefield"],Passengers:[{id:"ghast",Tags:["endFFghast","forcefield"],Silent:1b,NoAI:1,NoGravity:1,PersistenceRequired:1b,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}]},{id:"ghast",Tags:["endFFghast","forcefield"],Silent:1b,NoAI:1,NoGravity:1,PersistenceRequired:1b,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}]},{id:"ghast",Tags:["endFFghast","forcefield"],Silent:1b,NoAI:1,NoGravity:1,PersistenceRequired:1b,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}]},{id:"ghast",Tags:["endFFghast","forcefield"],Silent:1b,NoAI:1,NoGravity:1,PersistenceRequired:1b,Invulnerable:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}]}]}

kill @e[tag=end_crystal_guardian1]
kill @e[tag=end_crystal_guardian2]
summon armor_stand -23 81 -609 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":419}}],Tags:["char","end_crystal_guardian1","tbcLoc105"],Rotation:[110.0f,0.0f],CustomName:'{"translate":"end_crystal_guardian1","color":"gold"}',CustomNameVisible:1}
summon armor_stand -81 77 -600 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":436}}],Tags:["char","end_crystal_guardian2","tbcLoc105"],Rotation:[-70.0f,0.0f],CustomName:'{"translate":"end_crystal_guardian2","color":"dark_purple"}',CustomNameVisible:1}

forceload remove -84 -600
forceload remove -20 -609
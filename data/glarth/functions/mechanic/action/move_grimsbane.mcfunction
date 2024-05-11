
setblock -71 33 -263 minecraft:air
# Grimsbane
tag @e[tag=events] add grimsbane_moved
tag @e[tag=events] add evGrimsbaneMoves
execute as @e[tag=char,tag=grimsbane,type=armor_stand] at @s run particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
kill @e[tag=char,tag=grimsbane,type=armor_stand]
summon armor_stand -70 32 -250 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":72,"minecraft:unbreakable":{}}}],Tags:["char","grimsbane","pmGlowing","tbcLoc022","gb_moved"],Rotation:[100.0f,0.0f],CustomName:'{"translate":"grimsbane","color":"black"}',CustomNameVisible:0}	

# Sprite
tp @e[tag=sprite,tag=char] 7 26 -189 180 0
tag @e[tag=sprite,tag=char] add b

# Ents
tag @e[tag=ent,tag=char] add die3
tag @e[tag=ent,tag=char] add b
tag @e[tag=ent_king,tag=char] add b

# Pufferfish
tag @e[tag=char,tag=pufferfish_red] add a
tag @e[tag=char,tag=pufferfish] add c

# Vampire
tag @e[tag=char,tag=vampire] add b

# Demon
tag @e[tag=char,tag=demon] add b

# Observatory
fill -70 34 -263 -72 34 -263 air
fill -71 35 -263 -72 35 -263 air
setblock -72 32 -265 minecraft:cobblestone_wall
setblock -72 33 -265 minecraft:soul_lantern
summon minecraft:armor_stand -71 33 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":178}}],Fire:1000s,Invulnerable:1,Marker:1,Invisible:1,Tags:["observatoryWall","pmGlowing"]}
summon minecraft:armor_stand -71 34 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":179}}],Fire:1000s,Invulnerable:1,Marker:1,Invisible:1,Tags:["observatoryWall","pmGlowing"]}
summon minecraft:armor_stand -70 34 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":179}}],Fire:1000s,Invulnerable:1,Marker:1,Invisible:1,Tags:["observatoryWall","pmGlowing"]}
summon minecraft:armor_stand -71 35 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":178}}],Fire:1000s,Invulnerable:1,Marker:1,Invisible:1,Tags:["observatoryWall","pmGlowing"]}
summon minecraft:armor_stand -72 35 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":179}}],Fire:1000s,Invulnerable:1,Marker:1,Invisible:1,Tags:["observatoryWall","pmGlowing"]}
summon minecraft:armor_stand -72 34 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":178}}],Fire:1000s,Invulnerable:1,Marker:1,Invisible:1,Tags:["observatoryWall","pmGlowing"]}

setblock -71 32 -252 air
setblock -71 32 -248 air

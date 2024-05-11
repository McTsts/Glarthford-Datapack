scoreboard players reset @e[tag=necromancer_boss] SKBossTimer
scoreboard players set r Random 15
function glarth:util/rand_tbc
execute if score n Random matches 1 at @e[tag=necromancer_boss] run summon minecraft:zombie ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 2 at @e[tag=necromancer_boss] run summon minecraft:zombie ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],IsBaby:1}
execute if score n Random matches 3 at @e[tag=necromancer_boss] run summon minecraft:zombie ~ ~ ~ {ArmorItems:[{},{},{id:"iron_chestplate",count:1},{}]}
execute if score n Random matches 4 at @e[tag=necromancer_boss] run summon minecraft:husk ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 5 at @e[tag=necromancer_boss] run summon minecraft:husk ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],IsBaby:1}
execute if score n Random matches 6 at @e[tag=necromancer_boss] run summon minecraft:husk ~ ~ ~ {ArmorItems:[{},{},{id:"iron_chestplate",count:1},{}]}
execute if score n Random matches 7 at @e[tag=necromancer_boss] run summon minecraft:drowned ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 8 at @e[tag=necromancer_boss] run summon minecraft:drowned ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],IsBaby:1}
execute if score n Random matches 9 at @e[tag=necromancer_boss] run summon minecraft:drowned ~ ~ ~ {ArmorItems:[{},{},{id:"iron_chestplate",count:1},{}]}
execute if score n Random matches 10 at @e[tag=necromancer_boss] run summon minecraft:zombie_villager ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 11 at @e[tag=necromancer_boss] run summon minecraft:zombie_villager ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],IsBaby:1}
execute if score n Random matches 12 at @e[tag=necromancer_boss] run summon minecraft:zombie_villager ~ ~ ~ {ArmorItems:[{},{},{id:"iron_chestplate",count:1},{}]}
execute if score n Random matches 13 at @e[tag=necromancer_boss] run summon minecraft:zombified_piglin ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 14 at @e[tag=necromancer_boss] run summon minecraft:zombified_piglin ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],IsBaby:1}
execute if score n Random matches 15 at @e[tag=necromancer_boss] run summon minecraft:zombified_piglin ~ ~ ~ {ArmorItems:[{},{},{id:"iron_chestplate",count:1},{}]}
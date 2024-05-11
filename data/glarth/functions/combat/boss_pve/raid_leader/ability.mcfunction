scoreboard players reset @e[tag=raid_leader_boss] SKBossTimer
scoreboard players set r Random 15
function glarth:util/rand_tbc
execute if score n Random matches 1 at @e[tag=raid_leader_boss] run summon minecraft:pillager ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 2 at @e[tag=raid_leader_boss] run summon minecraft:pillager ~ ~ ~ {Health:2f,Attributes:[{Name:generic.maxHealth,Base:2}],}
execute if score n Random matches 3 at @e[tag=raid_leader_boss] run summon minecraft:pillager ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],HandItems:[{id:"crossbow",count:1}]}
execute if score n Random matches 4 at @e[tag=raid_leader_boss] run summon minecraft:vindicator ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 5 at @e[tag=raid_leader_boss] run summon minecraft:vindicator ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}]}
execute if score n Random matches 6 at @e[tag=raid_leader_boss] run summon minecraft:vindicator ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],HandItems:[{id:"iron_axe",count:1}]}
execute if score n Random matches 7 at @e[tag=raid_leader_boss] run summon minecraft:illusioner ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 8 at @e[tag=raid_leader_boss] run summon minecraft:illusioner ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}]}
execute if score n Random matches 9 at @e[tag=raid_leader_boss] run summon minecraft:illusioner ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],HandItems:[{id:"bow",count:1}]}
execute if score n Random matches 10 at @e[tag=raid_leader_boss] run summon minecraft:vex ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 11 at @e[tag=raid_leader_boss] run summon minecraft:vex ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}]}
execute if score n Random matches 12 at @e[tag=raid_leader_boss] run summon minecraft:ravager ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}]}
execute if score n Random matches 13 at @e[tag=raid_leader_boss] run summon minecraft:evoker ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2},{Name:"generic.movementSpeed",Base:0.5d}]}
execute if score n Random matches 14 at @e[tag=raid_leader_boss] run summon minecraft:evoker ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}]}
execute if score n Random matches 15 at @e[tag=raid_leader_boss] run summon minecraft:evoker ~ ~ ~ {Health:2.0f,Attributes:[{Name:"generic.maxHealth",Base:2}],HandItems:[{id:"golden_sword",count:1}]}
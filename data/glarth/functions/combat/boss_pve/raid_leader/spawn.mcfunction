execute as @e[tag=raid_leader] at @s run summon minecraft:pillager ~ ~ ~ {Health:70f,HandItems:[{id:"minecraft:crossbow",Count:1b},{}],Attributes:[{Name:generic.maxHealth,Base:70},{Name:generic.movementSpeed,Base:0.25},{Name:generic.attackDamage,Base:2},{Name:generic.attackKnockback,Base:5},{Name:zombie.spawnReinforcements,Base:100}],CustomName:"{\"translate\":\"raid_leader\",\"color\":\"dark_red\"}",CustomNameVisible:1,Tags:["raid_leader_boss","boss"]}
title @a title ["",{"translate":"raid_leader","color":"dark_red","bold":true}]
kill @e[tag=raid_leader]
execute as @a at @s run playsound boss4 voice @s ~ ~ ~ 0.8 0.7
tp @a[x=-54,y=21,z=-189,distance=6..,gamemode=adventure] @r[x=-54,y=21,z=-189,distance=..6,gamemode=adventure]
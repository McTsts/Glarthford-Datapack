execute as @e[tag=bat_boss] at @s run function glarth:dialogue/bat/lines/attack1
execute as @e[tag=bat_boss] at @s run summon minecraft:vex ~ ~5 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:120,show_particles:0b}],Invulnerable:1,Silent:1,Passengers:[{id:"armor_stand",Marker:1,Invisible:1,Passengers:[{id:"bat",Invulnerable:1}]}]}
execute as @e[tag=bat_boss] at @s run summon minecraft:vex ~ ~5 ~ {active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:120,show_particles:0b}],Invulnerable:1,Silent:1,Passengers:[{id:"armor_stand",Marker:1,Invisible:1,Passengers:[{id:"bat",Invulnerable:1}]}]}
scoreboard players reset @e[tag=bat_boss] tsTimer

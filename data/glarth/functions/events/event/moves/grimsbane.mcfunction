execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 7 26 -188
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 7 26 -188
summon minecraft:lightning_bolt 7 26 -188
playsound minecraft:entity.wither.spawn hostile @a 7 26 -188 4.5 1.5
tellraw @a {"translate":"grimsbane_arrives","color":"gray","italic":true}
summon armor_stand 7 26 -188 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:72,Unbreakable:1}}],Tags:["char","grimsbane","tbcLoc042"],Rotation:[180f,0f],CustomName:"{\"translate\":\"grimsbane\",\"color\":\"black\"}",CustomNameVisible:1}	
tag @e[tag=events,type=area_effect_cloud] add evGrimsbaneSpawned
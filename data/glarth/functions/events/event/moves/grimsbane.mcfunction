execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 7 26 -188
execute unless score lowGraphics Stats matches 1 run summon minecraft:lightning_bolt 7 26 -188
summon minecraft:lightning_bolt 7 26 -188
playsound minecraft:entity.wither.spawn hostile @a 7 26 -188 4.5 1.5
tellraw @a {"translate":"grimsbane_arrives","color":"gray","italic":true}
summon armor_stand 7 26 -188 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":72,"minecraft:unbreakable":{}}}],Tags:["char","grimsbane","tbcLoc042"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"grimsbane","color":"black"}',CustomNameVisible:1}	
tag @e[tag=events,type=area_effect_cloud] add evGrimsbaneSpawned
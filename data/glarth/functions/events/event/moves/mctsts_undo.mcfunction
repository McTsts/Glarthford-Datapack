fill 77 23 -255 77 24 -255 iron_bars[east=true,west=true]
setblock 76 23 -256 minecraft:air
execute unless entity @e[tag=mctsts] run summon armor_stand 76 23 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":1,"minecraft:unbreakable":{}}}],Tags:["char","mctsts"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"mctsts","color":"green"}',CustomNameVisible:0}
tag @e[tag=events,type=area_effect_cloud] remove evTsMoves
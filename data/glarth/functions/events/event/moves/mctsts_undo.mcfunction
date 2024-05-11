fill 77 23 -255 77 24 -255 iron_bars[east=true,west=true]
setblock 76 23 -256 minecraft:air
execute unless entity @e[tag=mctsts] run summon armor_stand 76 23 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:1,Unbreakable:1}}],Tags:["char","mctsts"],Rotation:[180f,0f],CustomName:"{\"translate\":\"mctsts\",\"color\":\"green\"}",CustomNameVisible:0}
tag @e[tag=events,type=area_effect_cloud] remove evTsMoves
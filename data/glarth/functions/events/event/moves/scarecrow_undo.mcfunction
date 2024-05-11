kill @e[tag=scarecrow,type=armor_stand] 
execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 15 24.7 -252 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":156}}],NoGravity:1,Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Tags:["scarecrow"]}
tag @e[tag=events,type=area_effect_cloud] remove evScarecrowFalls
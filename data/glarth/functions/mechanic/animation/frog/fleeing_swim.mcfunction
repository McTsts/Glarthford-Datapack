summon armor_stand ~ 26.3 ~ {id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":48}}],Tags:["frog","frogSwimming","frogSwimmingNew","die4"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1}
execute store result entity @e[tag=frogSwimmingNew,type=armor_stand,limit=1,sort=nearest,distance=..1] Rotation[0] float 1 run data get entity @s Rotation[0]
tag @e[tag=frogSwimmingNew,type=armor_stand,limit=1,sort=nearest,distance=..1] remove frogSwimmingNew
kill @s

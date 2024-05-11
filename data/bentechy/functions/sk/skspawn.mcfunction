execute @e[tag=skeleton_king] ~ ~ ~ particle hugeexplosion ~ ~ ~ 0 0 0 1 10 1
title @a title ["",{"translate":"skeleton_king","color":"dark_red","bold":true}]
execute @e[tag=skeleton_king] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Skeleton King",CustomNameVisible:1,Tags:["skeleton_boss","boss"],ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:skull",Damage:3,Count:1b,tag:{SkullOwner:{Id:"dcb80907-cdf9-43d1-9ca0-5e0af64a0232",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTg2MThiMmE0MjkzNDIxYzI5NjZlZWFlZGIxOGE3ZDk5N2NkN2MzMjcyNGFiYTNmODIzNzEyZjEzZDM5OWMifX19"}]}}}}],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:stick",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.0F],Health:60.0f,Attributes:[{Name:generic.maxHealth,Base:60},{Name:generic.movementSpeed,Base:0.25},{Name:generic.attackDamage,Base:2},{Name:generic.knockbackResistance,Base:1}],PersistenceRequired:1}
execute @e[tag=skeleton_king] ~ ~ ~ playsound block.end_gateway.spawn master @p
kill @e[tag=skeleton_king]
tp @a[x=90,y=25,z=-159,rm=6,m=2] @r[x=90,y=25,z=-159,r=6,m=2] 
fill 70 28 -155 70 26 -157 minecraft:iron_bars
execute @a ~ ~ ~ playsound boss voice @s ~ ~ ~ 0.8 1
fill -11 23 -135 -12 23 -134 water replace dark_prismarine_slab
fill -11 25 -136 -6 26 -146 water replace minecraft:dark_prismarine_slab
fill -4 26 -136 -1 25 -138 water replace minecraft:dark_prismarine_slab
fill -2 27 -137 -6 29 -142 air replace dark_prismarine_slab
fill -2 27 -137 -6 29 -142 air replace barrier
setblock -5 25 -138 water
scoreboard players set shipFall Animation 0
scoreboard players set shipAnim Animation 0
scoreboard players set shipStatus Animation 1
clone -19 16 -153 -38 1 -159 -15 24 -135
kill @e[tag=ship]
summon armor_stand 1 28 -132 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:25,Unbreakable:1}}],Tags:["char","sailor","shipMove"],Rotation:[90f,0f],CustomName:"{\"translate\":\"sailor\",\"color\":\"blue\"}",CustomNameVisible:1,NoGravity:1}
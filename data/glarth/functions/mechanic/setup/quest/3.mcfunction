 # Remove Default Baker
 kill @e[tag=baker]
 # Set Fire
 fill 9 27 -210 15 33 -215 minecraft:fire replace air
 # Extra Characters
 summon armor_stand 8 26 -214 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:9,Unbreakable:1}}],Tags:["char","baker2"],Rotation:[-70f,0f],CustomName:"{\"translate\":\"baker\",\"color\":\"#FF8488\"}",CustomNameVisible:1,NoGravity:1}
execute unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 7 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:33,Unbreakable:1}}],Tags:["char","wife2","cnoc"],Rotation:[0f,0f],CustomName:"{\"translate\":\"wife\",\"color\":\"#FF8488\"}",CustomNameVisible:1 ,NoGravity:1}
execute if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 7 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:157,Unbreakable:1}}],Tags:["char","husband2","cnoc"],Rotation:[0f,0f],CustomName:"{\"translate\":\"husband\",\"color\":\"aqua\"}",CustomNameVisible:1 ,NoGravity:1}
summon armor_stand 10 26 -189 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:71,Unbreakable:1}}],Tags:["char","citizen"],Rotation:[120f,0f],CustomName:"{\"translate\":\"citizen\",\"color\":\"gold\"}",CustomNameVisible:1}
 # Nether
function glarth:mechanic/setup/extra/nether


# Observatory Easteregg
summon armor_stand -76 38 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:210}}],Tags:["char","ender_guard1","charTorchEnd"],Rotation:[0f,0f],CustomName:"{\"translate\":\"ender_guard1\",\"color\":\"dark_purple\"}",CustomNameVisible:1}


scoreboard players set blazes Stats 2

# open tower
fill 22 45 -181 30 45 -181 minecraft:air
fill 30 45 -181 30 45 -189 minecraft:air
fill 30 45 -189 22 45 -189 minecraft:air
fill 22 45 -189 22 45 -181 minecraft:air


# Empty Mines
function glarth:mechanic/setup/extra/empty_mines

# gary #4 
clone 53 21 -232 50 17 -240 22 19 -217
summon armor_stand -82 55 -218 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:348,Unbreakable:1}}],Tags:["char","gibbs","asLoaderOverwrite"],Rotation:[-70f,0f],CustomName:"{\"translate\":\"gibbs\",\"color\":\"gray\"}",CustomNameVisible:1}
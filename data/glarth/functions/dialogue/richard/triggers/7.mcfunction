#7 Richard | Diamond to Nothing
 function glarth:dialogue/richard/lines/trade1
 clear @s diamond 1
 replaceitem entity @e[tag=richard,type=armor_stand] armor.head diamond_hoe{Damage:112}
 tag @e[tag=richard,type=armor_stand] add a
 execute if score quest Stats matches 1..2 unless entity @e[tag=assassin] run summon armor_stand -35 33 -168 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:34,Unbreakable:1}}],Tags:["char","assassin"],Rotation:[180f,0f],CustomName:"{\"translate\":\"assassin\",\"color\":\"#282828\"}",CustomNameVisible:1}
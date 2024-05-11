#7 Richard | Diamond to Nothing
 function glarth:dialogue/richard/lines/trade1
 clear @s diamond 1
 item replace entity @e[tag=richard,type=armor_stand] armor.head with minecraft:diamond_hoe[damage=112]
 tag @e[tag=richard,type=armor_stand] add a
 execute if score quest Stats matches 1..2 unless entity @e[tag=assassin] run summon armor_stand -35 33 -168 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":34,"minecraft:unbreakable":{}}}],Tags:["char","assassin"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"assassin","color":"#282828"}',CustomNameVisible:1}
 
 execute if score quest Stats matches 1 if entity @s[tag=!tip54] run function glarth:mechanic/tip/54
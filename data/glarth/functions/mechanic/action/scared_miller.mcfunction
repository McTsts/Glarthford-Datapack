summon armor_stand ~ ~1.55 ~ {Tags:["char_msg"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:"{\"text\":\"! ! !\",\"color\":\"gray\"}",NoGravity:1,Team:gray}
tp @s ~ ~0.3 ~ facing entity @p
tag @s add d
execute as @p run function glarth:dialogue/miller/lines/scared7
execute unless entity @e[tag=tbcSelector] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["tbc","tbcSelector"],CustomNameVisible:1,CustomName:"[{\"text\":\"|| \",\"color\":\"red\",\"bold\":true},{\"translate\":\"tbc.selected\",\"bold\":true,\"color\":\"gray\"},{\"text\":\" ||\",\"color\":\"red\",\"bold\":true}]"}
execute as @e[scores={tbcSel=1}] at @s run tp @e[tag=tbcSelector] ~ ~2.25 ~
execute if entity @e[scores={tbcSel=1},tag=tbcHideSelection] run data merge entity @e[tag=tbcSelector,limit=1] {CustomNameVisible:0}

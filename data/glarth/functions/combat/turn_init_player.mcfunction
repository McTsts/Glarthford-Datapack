

function glarth:combat/armor
scoreboard players set @s tbcMenu 0
scoreboard players set @s tbcMenuX 0
scoreboard players add @s[scores={tbcStamina=..19}] tbcStamina 1
execute as @s[scores={playerid=1}] run tag @e[tag=tbcPlayerAS1] add tbcSelPlayerAS
execute as @s[scores={playerid=2}] run tag @e[tag=tbcPlayerAS2] add tbcSelPlayerAS
execute as @s[scores={playerid=3}] run tag @e[tag=tbcPlayerAS3] add tbcSelPlayerAS
execute as @s[scores={playerid=1}] run tag @e[tag=tbcMarkerPos1] add tbcSelMarker
execute as @s[scores={playerid=2}] run tag @e[tag=tbcMarkerPos2] add tbcSelMarker
execute as @s[scores={playerid=3}] run tag @e[tag=tbcMarkerPos3] add tbcSelMarker
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 2
execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.turn set from storage glarth:main combat.inv[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.turn set from storage glarth:main combat.inv[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.turn set from storage glarth:main combat.inv[2]
execute as @s[scores={playerid=1}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[0]
execute as @s[scores={playerid=2}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[1]
execute as @s[scores={playerid=3}] run data modify storage glarth:main combat.turne set from storage glarth:main combat.effect[2]

# Player Only Effects
execute if score @s tbcStamina matches 17.. run function glarth:combat/effect/saturation
execute if score @s tbcStamina matches ..1 run function glarth:combat/effect/starvation

data merge entity @e[tag=tbcSelector,limit=1] {CustomNameVisible:1,CustomName:"[{\"text\":\"|| \",\"color\":\"red\",\"bold\":true},{\"translate\":\"tbc.selected\",\"bold\":true,\"color\":\"gray\"},{\"text\":\" ||\",\"color\":\"red\",\"bold\":true}]"}

scoreboard players set @s tbcSpeedX 0
function glarth:combat/peffect/handle

# No Enemies
execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] if score @s charType matches 1 run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.a"}]
execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] if score @s charType matches 2 run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.b"}]
execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] if score @s charType matches 3 run tellraw @a ["",{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.skip.c"}]
execute if entity @e[tag=tbcEnemy] unless entity @e[tag=tbcEnemy,tag=!tbcUnselectable] run function glarth:combat/done


# Flee Tip
execute if score @s tbcHealth matches ..8 run schedule function glarth:mechanic/tip/47 5t
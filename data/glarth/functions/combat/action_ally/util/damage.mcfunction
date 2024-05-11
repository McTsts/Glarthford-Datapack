## Frozen Damage
scoreboard players set freezeDmg Temp 0
execute if entity @e[scores={tbcSel=1,tbcFreeze=0..}] run scoreboard players operation freezeDmg Temp = damage tbcStats
execute if entity @e[scores={tbcSel=1,tbcFreeze=0..}] run scoreboard players operation freezeDmg Temp *= 25 Const
execute if entity @e[scores={tbcSel=1,tbcFreeze=0..}] run scoreboard players operation freezeDmg Temp /= 100 Const
execute if entity @e[scores={tbcSel=1,tbcFreeze=0..}] run scoreboard players operation damage tbcStats += freezeDmg Temp

# Blindness Miss
execute if entity @e[tag=tbcTurn,scores={tbcBlindness=1..}] run function glarth:combat/action_ally/util/damage_miss
execute if entity @e[tag=tbcTurn,scores={tbcPumpkin=1..}] run function glarth:combat/action_ally/util/damage_miss

# elemental boost
scoreboard players set dmgBoost Temp 0
execute if score bee tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcWeakBee] run scoreboard players operation dmgBoost Temp += bee tbcStats
execute if score fire tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcWeakFire] run scoreboard players operation dmgBoost Temp += fire tbcStats
execute if score poison tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcWeakPoison] run scoreboard players operation dmgBoost Temp += poison tbcStats
execute if score stun tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcWeakStun] run scoreboard players operation dmgBoost Temp += stun tbcStats
execute if score freeze tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcWeakFreeze] run scoreboard players operation dmgBoost Temp += freeze tbcStats
execute if score bee tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcImkBee] run scoreboard players operation dmgBoost Temp -= bee tbcStats
execute if score fire tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcImFire] run scoreboard players operation dmgBoost Temp -= fire tbcStats
execute if score poison tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcImPoison] run scoreboard players operation dmgBoost Temp -= poison tbcStats
execute if score stun tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcImStun] run scoreboard players operation dmgBoost Temp -= stun tbcStats
execute if score freeze tbcStats matches 1.. if entity @e[scores={tbcSel=1},tag=tbcImFreeze] run scoreboard players operation dmgBoost Temp -= freeze tbcStats
scoreboard players operation dmgBoost Temp *= 10 Const
scoreboard players operation damage tbcStats += dmgBoost Temp

# ntca
execute store result storage ntca:io in int 1 run scoreboard players get damage tbcStats
function ntcadec:call

execute if score dodged tbcStats matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,limit=1]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.miss","with":[[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]]}]
execute if score dodged tbcStats matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,limit=1]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.dodged","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,limit=1]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.success","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true},{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]
execute if score dodged tbcStats matches 0 unless score damage tbcStats matches 1.. run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn,limit=1]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.failure","with":[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[scores={tbcSel=1}]","interpret":true}]}]
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1}] tbcHealth -= damage tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1},tag=!tbcImBee] tbcBee += bee tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1},tag=!tbcImFire] tbcFire += fire tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1},tag=!tbcImPoison] tbcPoison += poison tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1},tag=!tbcImStun] tbcStun += stun tbcStats
execute if score dodged tbcStats matches 0 if score damage tbcStats matches 1.. run scoreboard players operation @e[scores={tbcSel=1},tag=!tbcImFreeze] tbcFreeze += freeze tbcStats
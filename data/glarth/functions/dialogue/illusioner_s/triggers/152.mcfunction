# 131 Bow Merchant | Archery Training
schedule function glarth:dialogue/illusioner_s/lines/trade1 30t
tag @e[tag=illusioner_s,type=armor_stand] add a
execute as @e[tag=illusioner_s] run function glarth:combat/start/special/throwable
tag @a[gamemode=adventure] add throwableTutorial
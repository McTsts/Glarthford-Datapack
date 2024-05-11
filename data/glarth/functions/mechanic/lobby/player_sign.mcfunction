data modify block 164 24 -95 Text1 set value '{"translate":"lobby.combat.players","bold":true}'
data modify block 164 24 -95 Text2 set value '""'
data modify block 164 24 -95 Text3 set value '""'
data modify block 164 24 -95 Text4 set value '""'

execute if score lPlayers Temp matches 4.. run data modify block 164 24 -95 Text2 set value '{"translate":"lobby.combat.toomany.1"}'
execute if score lPlayers Temp matches 4.. run data modify block 164 24 -95 Text3 set value '{"translate":"lobby.combat.toomany.2"}'

scoreboard players set @a[gamemode=adventure,tag=!lSpec] Temp 0
scoreboard players set @r[gamemode=adventure,tag=!lSpec,scores={Temp=0}] Temp 1
scoreboard players set @r[gamemode=adventure,tag=!lSpec,scores={Temp=0}] Temp 2
scoreboard players set @r[gamemode=adventure,tag=!lSpec,scores={Temp=0}] Temp 3

execute if score lPlayers Temp matches 1.. run data modify block 164 24 -95 Text2 set value '[{"text":"","color":"#3333FF"},{"entity":"@p[gamemode=adventure,tag=!lSpec,scores={Temp=1}]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}]'
execute if score lPlayers Temp matches 2.. run data modify block 164 24 -95 Text3 set value '[{"text":"","color":"#33FF33"},{"entity":"@p[gamemode=adventure,tag=!lSpec,scores={Temp=2}]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}]'
execute if score lPlayers Temp matches 3.. run data modify block 164 24 -95 Text4 set value '[{"text":"","color":"#FF3333"},{"entity":"@p[gamemode=adventure,tag=!lSpec,scores={Temp=3}]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}]'
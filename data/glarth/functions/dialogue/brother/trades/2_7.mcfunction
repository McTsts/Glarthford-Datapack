# Tulip to Sugar
execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brother.a1a"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 112"}}]
execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brother.a1b"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 113"}}]
execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5,scores={iRTulip=0,iPTulip=0,iOTulip=1..}] ["",{"translate":"trade2","with":[{"translate":"brother.a1c"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 193"}}]
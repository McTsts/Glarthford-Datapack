tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"pufferfish","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"pufferfish.d","color":"gray"}]
playsound minecraft:entity.guardian.hurt hostile @a[r=5] ~ ~ ~ 1 1
execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"pufferfish.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 75"}},{"text":"] ","color":"green"}]
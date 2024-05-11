scoreboard players add @s Sleep 1
execute as @s[scores={Sleep=10}] at @s run function glarth:mechanic/char/blink/start
execute as @s[scores={Sleep=10}] at @s if entity @a[gamemode=adventure,distance=..15] run summon armor_stand ~ ~1.4 ~ {Tags:["zzz"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:'{"text":"Z"}',NoGravity:1,Team:"gray"}
execute as @s[scores={Sleep=20}] at @s as @e[tag=zzz,limit=1,sort=nearest] run data merge entity @s {CustomName:'{"text":"Zz"}'}
execute as @s[scores={Sleep=30}] at @s as @e[tag=zzz,limit=1,sort=nearest] run data merge entity @s {CustomName:'{"text":"Zzz"}'}
execute as @s[scores={Sleep=40}] at @s run kill @e[tag=zzz,limit=1] 
scoreboard players set @s[scores={Sleep=40..}] Sleep 0
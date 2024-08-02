#

execute if score fireworks tbc_firework matches 1.. unless entity @e[tag=tbcEnderPriest] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:5000,Tags:["tbcFirework59","tbc","newFirework"]}
execute if score fireworks tbc_firework matches 1.. if entity @e[tag=tbcEnderPriest] run scoreboard players set r Random 2
execute if score fireworks tbc_firework matches 1.. if entity @e[tag=tbcEnderPriest] run function glarth:util/rand_tbc
execute if score fireworks tbc_firework matches 1.. if entity @e[tag=tbcEnderPriest] run playsound minecraft:block.dispenser.launch hostile @a 512 36 12
execute if score fireworks tbc_firework matches 1.. if entity @e[tag=tbcEnderPriest] if score n Random matches 1 run summon minecraft:firework_rocket 512 38 12 {LifeTime:5000,Tags:["tbcFirework59","tbc","newFirework"]}
execute if score fireworks tbc_firework matches 1.. if entity @e[tag=tbcEnderPriest] if score n Random matches 2 run summon minecraft:firework_rocket 511 35 13 {LifeTime:5000,Tags:["tbcFirework59","tbc","newFirework"]}
scoreboard players remove fireworks tbc_firework 1
scoreboard players set r Random 20
function glarth:util/rand_tbc
scoreboard players operation n Random /= 5 Const
#scoreboard players add n Random 1
scoreboard players operation n Random *= 5 Const
scoreboard players operation fireworks_time tbc_firework = n Random
scoreboard players add fireworks_time tbc_firework 15
scoreboard players operation @e[tag=newFirework,type=minecraft:firework_rocket] tbc_fireworkDe = fireworks_time tbc_firework
execute as @e[tag=newFirework] store result score @s tbc_fireworkID run scoreboard players add max_id tbc_fireworkID 1
#execute as @e[tag=newFirework] run tellraw @a ["",{"score":{"name":"@s","objective":"tbc_fireworkDe"},"bold":true},{"text":" ID: ","bold":false},{"score":{"name":"@s","objective":"tbc_fireworkID"}}]
scoreboard players remove max_id tbc_fireworkID 1
execute as @e[tag=tbcFirework59,tag=!new_firework] if score @s tbc_fireworkID = max_id tbc_fireworkID run scoreboard players operation @e[tag=newFirework] tbc_fireworkDe += @s tbc_fireworkDe
scoreboard players add max_id tbc_fireworkID 1
execute as @e[tag=newFirework,limit=1] if score @s tbc_fireworkID matches 1 run scoreboard players add @s tbc_fireworkDe 10
#execute as @e[tag=newFirework] run tellraw @a ["",{"score":{"name":"@s","objective":"tbc_fireworkDe"},"bold":true},{"text":" ID: ","bold":false},{"score":{"name":"@s","objective":"tbc_fireworkID"}}]
tag @e[tag=newFirework] remove newFirework
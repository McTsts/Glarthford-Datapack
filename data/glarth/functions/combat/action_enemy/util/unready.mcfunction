tag @e[tag=tbcReady] remove tbcReady
scoreboard players set unready tbcStats 0
execute as @e[scores={tbcID=1..}] run scoreboard players add unready tbcStats 1
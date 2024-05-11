scoreboard players add @e[tag=skeleton_boss] SKBossTimer 1
execute if entity @e[scores={SKBossTimer=250..250}] run function glarth:combat/boss_pve/sk/skability1 
execute if entity @e[scores={SKBossTimer=450..450}] run function glarth:combat/boss_pve/sk/skability2 
execute if entity @e[scores={SKBossTimer=100..100}] run function glarth:combat/boss_pve/sk/skability3
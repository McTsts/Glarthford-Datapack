scoreboard players set enemies tbcStats 0
scoreboard players set enemiesAll tbcStats 0
scoreboard players add @e[tag=tbcEnemy] tbcStun 0
scoreboard players add @e[tag=tbcEnemy] tbcBlindness 0
scoreboard players add @e[tag=tbcEnemy] tbcFreeze 0
execute as @e[tag=tbcEnemy] run scoreboard players add enemiesAll tbcStats 1
execute as @e[tag=tbcEnemy,scores={tbcStun=..0,tbcBlindness=..0,tbcFreeze=..0},tag=!tbcLonely] run scoreboard players add enemies tbcStats 1
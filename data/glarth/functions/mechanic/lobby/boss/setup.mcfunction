clone 180 27 -68 174 23 -71 172 23 -118

scoreboard players set bossRe Stats -1
execute if entity @a[tag=encB0,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 0
execute if entity @a[tag=encB1,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 1
execute if entity @a[tag=encB9,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 2
execute if entity @a[tag=encB2,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 3
execute if entity @a[tag=encB3,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 4
execute if entity @a[tag=encB5,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 5
execute if entity @a[tag=encB8,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 6
execute if entity @a[tag=encB6,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 7
execute if entity @a[tag=encB7,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 8
execute if entity @a[tag=encB4,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 9
execute if entity @a[tag=encB10,gamemode=adventure,tag=!lSpec] run scoreboard players set bossRe Stats 10

function glarth:mechanic/lobby/boss/change
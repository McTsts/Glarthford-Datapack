execute if score bossRe Stats matches 0 unless entity @a[tag=encB0,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 1 unless entity @a[tag=encB1,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 2 unless entity @a[tag=encB9,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 3 unless entity @a[tag=encB2,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 4 unless entity @a[tag=encB3,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 5 unless entity @a[tag=encB5,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 6 unless entity @a[tag=encB8,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 7 unless entity @a[tag=encB6,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 8 unless entity @a[tag=encB7,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 9 unless entity @a[tag=encB4,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const
execute if score bossRe Stats matches 10 unless entity @a[tag=encB10,gamemode=adventure,tag=!lSpec] run scoreboard players operation bossDir Stats *= 2 Const


scoreboard players remove bossMax Stats 1
execute if score bossDir Stats matches -2 if score bossMax Stats matches 1.. run function glarth:mechanic/lobby/boss/previous
execute if score bossDir Stats matches 2 if score bossMax Stats matches 1.. run function glarth:mechanic/lobby/boss/next
execute if score bossDir Stats matches -1..1 if score bossMax Stats matches 1.. run function glarth:mechanic/lobby/boss/change
execute if score bossMax Stats matches ..0 run clone 180 27 -68 174 23 -71 172 23 -118
execute if score bossMax Stats matches ..0 run scoreboard players set bossMax Stats 15
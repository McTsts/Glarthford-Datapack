scoreboard players add curLinkFrame pcData 1

execute if score curLinkAnim pcData matches 0 as @e[type=armor_stand,tag=lobbyScreenC2,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get 0 Const
execute if score curLinkAnim pcData matches 1 as @e[type=armor_stand,tag=lobbyScreenC2,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get 6 Const
execute if score curLinkAnim pcData matches 2 as @e[type=armor_stand,tag=lobbyScreenC2,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get 7 Const
execute if score curLinkAnim pcData matches 3 as @e[type=armor_stand,tag=lobbyScreenC2,limit=1] store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get 8 Const

execute as @e[type=armor_stand,tag=lobbyScreenC2,limit=1] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get curLinkFrame pcData
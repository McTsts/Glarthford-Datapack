# Correct Values
execute if score @p[scores={lobbySelection=1}] charType matches ..0 run scoreboard players operation @p[scores={lobbySelection=1}] charType = charType charSelection
execute if score @p[scores={lobbySelection=1}] charBase matches ..0 run scoreboard players operation @p[scores={lobbySelection=1}] charBase = charBase charSelection
execute if score @p[scores={lobbySelection=1}] charBody matches ..0 run scoreboard players operation @p[scores={lobbySelection=1}] charBody = charBody charSelection
execute if score @p[scores={lobbySelection=1}] charBodyColor matches ..0 unless score @p[scores={lobbySelection=1}] charBody matches 6 run scoreboard players operation @p[scores={lobbySelection=1}] charBodyColor = charBodyColor charSelection
execute if score @p[scores={lobbySelection=1}] charBodyColor matches ..0 if score @p[scores={lobbySelection=1}] charBody matches 6 if score @p[scores={lobbySelection=1}] charC3 matches 1.. run scoreboard players set @p[scores={lobbySelection=1}] charBodyColor 3
execute if score @p[scores={lobbySelection=1}] charBodyColor matches ..0 if score @p[scores={lobbySelection=1}] charBody matches 6 if score @p[scores={lobbySelection=1}] charC2 matches 1.. run scoreboard players set @p[scores={lobbySelection=1}] charBodyColor 2
execute if score @p[scores={lobbySelection=1}] charBodyColor matches ..0 if score @p[scores={lobbySelection=1}] charBody matches 6 run scoreboard players set @p[scores={lobbySelection=1}] charBodyColor 1
execute if score @p[scores={lobbySelection=1}] charHead matches ..0 run scoreboard players operation @p[scores={lobbySelection=1}] charHead = charHead charSelection
execute if score @p[scores={lobbySelection=1}] charHeadColor matches ..0 run scoreboard players operation @p[scores={lobbySelection=1}] charHeadColor = charHeadColor charSelection
execute if score @p[scores={lobbySelection=1}] charSpouse matches ..0 run scoreboard players operation @p[scores={lobbySelection=1}] charSpouse = charSpouse charSelection

execute if score @p[scores={lobbySelection=1}] charType > charType charSelection run scoreboard players set @p[scores={lobbySelection=1}] charType 1
execute if score @p[scores={lobbySelection=1}] charBase > charBase charSelection run scoreboard players set @p[scores={lobbySelection=1}] charBase 1
execute if score @p[scores={lobbySelection=1}] charBody > charBody charSelection run scoreboard players set @p[scores={lobbySelection=1}] charBody 1
execute if score @p[scores={lobbySelection=1}] charBodyColor > charBodyColor charSelection run scoreboard players set @p[scores={lobbySelection=1}] charBodyColor 1
execute if score @p[scores={lobbySelection=1}] charHead > charHead charSelection run scoreboard players set @p[scores={lobbySelection=1}] charHead 1
execute if score @p[scores={lobbySelection=1}] charHeadColor > charHeadColor charSelection run scoreboard players set @p[scores={lobbySelection=1}] charHeadColor 1
execute if score @p[scores={lobbySelection=1}] charSpouse > charSpouse charSelection run scoreboard players set @p[scores={lobbySelection=1}] charSpouse 1

execute if score @s charBody matches 6 if score @s charBodyColor matches 2 unless score @s charC2 matches 1.. run scoreboard players set @s charBodyColor 1
execute if score @s charBody matches 6 if score @s charBodyColor matches 3 unless score @s charC3 matches 1.. run scoreboard players set @s charBodyColor 1

# Calculate Real Values
scoreboard players operation @p[scores={lobbySelection=1}] charBodyReal = @p[scores={lobbySelection=1}] charBody
scoreboard players operation @p[scores={lobbySelection=1}] charBodyReal -= 1 Const
scoreboard players operation @p[scores={lobbySelection=1}] charBodyReal *= 3 Const
scoreboard players operation @p[scores={lobbySelection=1}] charBodyReal += @p[scores={lobbySelection=1}] charBodyColor

execute if score @s charBody matches 6 run scoreboard players set @s charBodyReal 100
execute if score @s charBody matches 6 if score @s charBodyColor matches 1 run scoreboard players operation @s charBodyReal += @s charC1
execute if score @s charBody matches 6 if score @s charBodyColor matches 2 run scoreboard players operation @s charBodyReal += @s charC2
execute if score @s charBody matches 6 if score @s charBodyColor matches 3 run scoreboard players operation @s charBodyReal += @s charC3

scoreboard players operation @p[scores={lobbySelection=1}] charHeadReal = @p[scores={lobbySelection=1}] charHead
scoreboard players operation @p[scores={lobbySelection=1}] charHeadReal -= 1 Const
scoreboard players operation @p[scores={lobbySelection=1}] charHeadReal *= 3 Const
scoreboard players operation @p[scores={lobbySelection=1}] charHeadReal += @p[scores={lobbySelection=1}] charHeadColor

# Update Chars
execute at @e[tag=charQB,tag=lobby] run function glarth:mechanic/make_char
execute at @e[tag=selNameAll,tag=lobby] run function glarth:mechanic/lobby/selection/make_name

# Update Spouse
execute if score @p[scores={lobbySelection=1}] charSpouse matches 1 run data merge entity @e[tag=charQS,type=armor_stand,limit=1] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":159}}]}
execute if score @p[scores={lobbySelection=1}] charSpouse matches 1 run data merge entity @e[tag=charQSname,type=armor_stand,limit=1] {CustomName:'{"translate":"wife","color":"light_purple","font":"custom:small"}'}
execute if score @p[scores={lobbySelection=1}] charSpouse matches 2 run data merge entity @e[tag=charQS,type=armor_stand,limit=1] {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":158}}]}
execute if score @p[scores={lobbySelection=1}] charSpouse matches 2 run data merge entity @e[tag=charQSname,type=armor_stand,limit=1] {CustomName:'{"translate":"husband","color":"aqua","font":"custom:small"}'}

# gender
execute if score @p[scores={lobbySelection=1}] charType matches 1 run data modify block 165 24 -129 front_text.messages[0] set value '{"color":"green","translate":"lobby.selection.type.1.letter"}'
execute if score @p[scores={lobbySelection=1}] charType matches 2 run data modify block 165 24 -129 front_text.messages[0] set value '{"color":"yellow","translate":"lobby.selection.type.2.letter"}'
execute if score @p[scores={lobbySelection=1}] charType matches 3 run data modify block 165 24 -129 front_text.messages[0] set value '{"color":"gray","translate":"lobby.selection.type.3.letter"}'
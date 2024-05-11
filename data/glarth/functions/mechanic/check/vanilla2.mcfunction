execute store result score length Temp run data get block 84 28 -126 LastOutput
execute if score length Temp matches 61 run scoreboard players set vanilla Stats 1
execute unless score length Temp matches 61 run scoreboard players set vanilla Stats 0
execute unless score length Temp matches 61 run tellraw @a {"translate":"play_on_vanilla.msg","color":"red"}
gamerule sendCommandFeedback false

execute store result score vanilla2 Temp run datapack list
execute unless score vanilla2 Temp matches 13 if score length Temp matches 61 run scoreboard players set vanilla Stats 0
execute unless score vanilla2 Temp matches 13 if score length Temp matches 61 run tellraw @a {"translate":"play_on_vanilla.msg","color":"red"}
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @p[tag=temp] tbcStoreX
execute store result entity @s Pos[1] double 0.01 run scoreboard players get @p[tag=temp] tbcStoreY
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @p[tag=temp] tbcStoreZ
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @p[tag=temp] tbcStoreRY
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @p[tag=temp] tbcStoreRX
execute at @s as @p[tag=temp] run tp @s ~ ~1 ~ ~ ~
kill @s
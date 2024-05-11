scoreboard players add @e[tag=DR] DR 1
scoreboard players add @e[tag=DRL] DR 1
execute as @e[scores={DR=1},tag=DR] at @s run setblock ~ ~ ~ redstone_block
execute as @e[scores={DR=2},tag=DR] at @s run setblock ~ ~ ~ air destroy
execute as @e[scores={DR=1},tag=DRL] at @s if block ~ ~-1 ~ oak_trapdoor run setblock ~ ~-1 ~ oak_trapdoor[facing=east,half=top,open=false]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~1 ~ ~ oak_trapdoor run setblock ~1 ~ ~ oak_trapdoor[facing=east,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~-1 ~ ~ oak_trapdoor run setblock ~-1 ~ ~ oak_trapdoor[facing=west,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~ ~ ~-1 oak_trapdoor run setblock ~ ~ ~-1 oak_trapdoor[facing=north,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~ ~ ~1 oak_trapdoor run setblock ~ ~ ~1 oak_trapdoor[facing=south,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~ ~-1 ~ spruce_trapdoor run setblock ~ ~-1 ~ spruce_trapdoor[facing=east,half=top,open=false]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~1 ~ ~ spruce_trapdoor run setblock ~1 ~ ~ spruce_trapdoor[facing=east,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~-1 ~ ~ spruce_trapdoor run setblock ~-1 ~ ~ spruce_trapdoor[facing=west,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~ ~ ~-1 spruce_trapdoor run setblock ~ ~ ~-1 spruce_trapdoor[facing=north,half=top,open=true]
execute as @e[scores={DR=1},tag=DRL] at @s if block ~ ~ ~1 spruce_trapdoor run setblock ~ ~ ~1 spruce_trapdoor[facing=south,half=top,open=true]
kill @e[scores={DR=2}]

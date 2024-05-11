execute @a ~ ~ ~ detect ~ 30 ~ concrete color=blue scoreboard players tag @s add inMaze
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=black scoreboard players tag @s remove inMaze
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=red execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~ ~ ~1 air * fill ~1 ~ ~ ~-1 ~2 ~ stone
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=red execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~ ~ ~-1 air * fill ~1 ~ ~ ~-1 ~2 ~ stone
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=red execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~1 ~ ~ air * fill ~ ~ ~1 ~ ~2 ~-1 stone
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=red execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~-1 ~ ~ air * fill ~ ~ ~1 ~ ~2 ~-1 stone
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=lime execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~ ~ ~1 air * fill ~1 ~ ~ ~-1 ~2 ~ structure_void
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=lime execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~ ~ ~-1 air * fill ~1 ~ ~ ~-1 ~2 ~ structure_void
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=lime execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~1 ~ ~ air * fill ~ ~ ~1 ~ ~2 ~-1 structure_void
execute @a ~ ~ ~ detect ~ 30 ~ concrete color=lime execute @e[tag=maze,r=12,c=1] ~ ~ ~ detect ~-1 ~ ~ air * fill ~ ~ ~1 ~ ~2 ~-1 structure_void
scoreboard players set @e[tag=maze_torch] mazeT 0
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5] ~ ~ ~ detect ~-1 ~ ~ air * scoreboard players add @s mazeT 1
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5] ~ ~ ~ detect ~ ~ ~1 air * scoreboard players add @s mazeT 2
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5] ~ ~ ~ detect ~1 ~ ~ air * scoreboard players add @s mazeT 4
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5] ~ ~ ~ detect ~ ~ ~-1 air * scoreboard players add @s mazeT 8
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5,score_mazeT_min=14,score_mazeT=14] ~ ~ ~ setblock ~ ~ ~ torch facing=east
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5,score_mazeT_min=13,score_mazeT=13] ~ ~ ~ setblock ~ ~ ~ torch facing=north
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5,score_mazeT_min=11,score_mazeT=11] ~ ~ ~ setblock ~ ~ ~ torch facing=west
execute @r[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,r=5,score_mazeT_min=7,score_mazeT=7] ~ ~ ~ setblock ~ ~ ~ torch facing=south
execute @a[tag=inMaze] ~ ~ ~ execute @e[tag=maze_torch,rm=6] ~ ~ ~ setblock ~ ~ ~ air
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~-6 ~ ~ 0.1 2 2 0 3 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~-7.5 ~ ~ 0.1 2 2 0 9 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~-9 ~ ~ 0.1 2 2 0 27 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~-10.5 ~ ~ 0.1 2 2 0 50 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~6 ~ ~ 0.1 2 2 0 3 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~7.5 ~ ~ 0.1 2 2 0 9 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~9 ~ ~ 0.1 2 2 0 27 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~10.5 ~ ~ 0.1 2 2 0 50 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~6 2 2 0.1 0 3 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~7.5 2 2 0.1 0 9 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~9 2 2 0.1 0 27 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~10.5 2 2 0.1 0 50 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~-6 2 2 0.1 0 3 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~-7.5 2 2 0.1 0 9 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~-9 2 2 0.1 0 27 force @s
execute @a[tag=inMaze] ~ ~ ~ particle smoke ~ ~ ~-10.5 2 2 0.1 0 50 force @s
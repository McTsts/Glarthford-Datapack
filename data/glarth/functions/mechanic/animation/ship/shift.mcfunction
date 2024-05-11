scoreboard players add shipAnim Animation 1

# 1, 4; 2, 4; 3, 4; 4, 4; 5, 6; 6, 8; 7, 10;
execute if score shipAnim Animation matches 4 run scoreboard players set shipAngle Animation 1
execute if score shipAnim Animation matches 8 run scoreboard players set shipAngle Animation 2
execute if score shipAnim Animation matches 12 run scoreboard players set shipAngle Animation 3
execute if score shipAnim Animation matches 16 run scoreboard players set shipAngle Animation 4
execute if score shipAnim Animation matches 22 run scoreboard players set shipAngle Animation 5
execute if score shipAnim Animation matches 30 run scoreboard players set shipAngle Animation 6
execute if score shipAnim Animation matches 40 run scoreboard players set shipAngle Animation 7
execute if score shipAnim Animation matches 48 run scoreboard players set shipAngle Animation 6
execute if score shipAnim Animation matches 54 run scoreboard players set shipAngle Animation 5
execute if score shipAnim Animation matches 60 run scoreboard players set shipAngle Animation 4
execute if score shipAnim Animation matches 64 run scoreboard players set shipAngle Animation 3
execute if score shipAnim Animation matches 68 run scoreboard players set shipAngle Animation 2
execute if score shipAnim Animation matches 72 run scoreboard players set shipAngle Animation 1
execute if score shipAnim Animation matches 76 run scoreboard players set shipAngle Animation 0
execute if score shipAnim Animation matches 80 run scoreboard players set shipAngle Animation -1
execute if score shipAnim Animation matches 84 run scoreboard players set shipAngle Animation -2
execute if score shipAnim Animation matches 88 run scoreboard players set shipAngle Animation -3
execute if score shipAnim Animation matches 92 run scoreboard players set shipAngle Animation -4
execute if score shipAnim Animation matches 98 run scoreboard players set shipAngle Animation -5
execute if score shipAnim Animation matches 106 run scoreboard players set shipAngle Animation -6
execute if score shipAnim Animation matches 116 run scoreboard players set shipAngle Animation -7
execute if score shipAnim Animation matches 124 run scoreboard players set shipAngle Animation -6
execute if score shipAnim Animation matches 130 run scoreboard players set shipAngle Animation -5
execute if score shipAnim Animation matches 134 run scoreboard players set shipAngle Animation -4
execute if score shipAnim Animation matches 138 run scoreboard players set shipAngle Animation -3
execute if score shipAnim Animation matches 142 run scoreboard players set shipAngle Animation -2
execute if score shipAnim Animation matches 146 run scoreboard players set shipAngle Animation -1
execute if score shipAnim Animation matches 150 run scoreboard players set shipAngle Animation 0

execute if score shipAnim Animation matches 150 run function glarth:mechanic/animation/ship/next

function glarth:mechanic/animation/ship/angle
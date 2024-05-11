scoreboard players operation damageDisX tbcStats = damageDis tbcStats
scoreboard players operation damageDis tbcStats -= @s tbcAbsorption
scoreboard players operation damageDis tbcStats > 0 Const
scoreboard players operation @s tbcAbsorption -= damageDisX tbcStats
scoreboard players operation @s tbcAbsorption > 0 Const

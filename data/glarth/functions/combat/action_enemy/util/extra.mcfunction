scoreboard players set max tbcID 0
execute as @e[tag=tbcEnemy,tag=!tbcLonely,scores={tbcStun=..0,tbcBlindness=..0,tbcFreeze=..0}] run scoreboard players operation max tbcID > @s tbcID
scoreboard players add max tbcID 1
tag @e[tag=tbcEnemy,tag=!tbcLonely,scores={tbcID=0,tbcStun=..0,tbcBlindness=..0,tbcFreeze=..0}] add rand_sel
function glarth:util/rand_sel/1
tag @e[tag=rand_sel_result,limit=1] add tbcExtra
execute unless entity @e[tag=tbcExtra] run tag @e[tag=tbcEnemy,sort=random,limit=1,scores={tbcID=0}] add tbcExtra
scoreboard players operation @e[tag=tbcExtra] tbcID = max tbcID
execute at @e[tag=tbcExtra] run scoreboard players operation @e[tag=tbcMarkerEnemy,sort=nearest,limit=1] tbcIDM = @e[tag=tbcExtra] tbcID
tag @e[tag=tbcExtra] remove tbcExtra
function glarth:combat/action_enemy/util/unready
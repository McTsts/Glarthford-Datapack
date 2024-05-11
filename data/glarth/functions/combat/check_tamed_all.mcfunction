execute if entity @s[type=strider,nbt={Saddle:1b}] if score @s tbcCompID = @p[tag=func] playerid run tag @s add tbcCompanionN
execute if entity @s[type=pig,nbt={Saddle:1b}] if score @s tbcCompID = @p[tag=func] playerid run tag @s add tbcCompanionN
execute if entity @s[type=polar_bear] if score @s tbcCompID = @p[tag=func] playerid run tag @s add tbcCompanionN

execute if entity @s[tag=tbcCompanionN] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0] append from entity @s
execute if entity @s[tag=tbcCompanionN] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1] append from entity @s
execute if entity @s[tag=tbcCompanionN] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2] append from entity @s


execute if entity @s[tag=tbcCompanionN,type=strider] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0][-1] merge value {id:"strider",tbcCompID:1}
execute if entity @s[tag=tbcCompanionN,type=strider] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1][-1] merge value {id:"strider",tbcCompID:2}
execute if entity @s[tag=tbcCompanionN,type=strider] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2][-1] merge value {id:"strider",tbcCompID:3}

execute if entity @s[tag=tbcCompanionN,type=pig] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0][-1] merge value {id:"pig",tbcCompID:1}
execute if entity @s[tag=tbcCompanionN,type=pig] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1][-1] merge value {id:"pig",tbcCompID:2}
execute if entity @s[tag=tbcCompanionN,type=pig] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2][-1] merge value {id:"pig",tbcCompID:3}

execute if entity @s[tag=tbcCompanionN,type=polar_bear] if entity @a[scores={playerid=1},tag=func] run data modify storage glarth:main combat.comp[0][-1] merge value {id:"polar_bear",tbcCompID:1}
execute if entity @s[tag=tbcCompanionN,type=polar_bear] if entity @a[scores={playerid=2},tag=func] run data modify storage glarth:main combat.comp[1][-1] merge value {id:"polar_bear",tbcCompID:2}
execute if entity @s[tag=tbcCompanionN,type=polar_bear] if entity @a[scores={playerid=3},tag=func] run data modify storage glarth:main combat.comp[2][-1] merge value {id:"polar_bear",tbcCompID:3}

tp @s[tag=tbcCompanionN] ~ 0 ~
kill @s[tag=tbcCompanionN]
execute if entity @s[tag=stage_001] if score @s tbcHealth matches ..40 run function glarth:combat/stages/001
execute if entity @s[tag=stage_002] if score @s tbcBar matches ..17 run function glarth:combat/stages/002
execute if entity @s[tag=stage_003] if score @s tbcHealth matches ..120 run function glarth:combat/stages/003
execute if entity @s[tag=stage_004] run function glarth:combat/stages/004
execute if entity @s[tag=stage_005] run function glarth:combat/stages/005
execute if entity @s[tag=stage_006] if score @s tbcBar matches ..40 run function glarth:combat/stages/006
execute if entity @s[tag=stage_007] if score @s tbcBar matches ..20 run function glarth:combat/stages/007
execute if entity @s[tag=stage_008] unless entity @e[tag=tbcEnemy6] unless entity @e[tag=tbcEnemy7] run function glarth:combat/stages/008
execute if entity @s[tag=stage_009] run function glarth:combat/stages/009
execute if entity @s[tag=stage_010] run function glarth:combat/stages/010
execute if entity @s[tag=stage_011] run function glarth:combat/stages/011
execute if entity @s[tag=stage_012] if score @s tbcBar matches ..25 run function glarth:combat/stages/012
execute if entity @s[tag=stage_013] if score @s tbcBar matches ..15 run function glarth:combat/stages/013
execute if entity @s[tag=stage_014] if score @s tbcBar matches ..30 run function glarth:combat/stages/014
execute if entity @s[tag=stage_015] run function glarth:combat/stages/015
execute if entity @s[tag=stage_016] if score @s tbcCharge matches 2.. run function glarth:combat/stages/016
execute if entity @s[tag=stage_017] if score @s tbcCharge matches 1.. run function glarth:combat/stages/017
execute if entity @s[tag=stage_018] if score @s tbcCharge matches 1.. run function glarth:combat/stages/018
execute if entity @s[tag=stage_019] if score @s tbcBar matches ..20 run function glarth:combat/stages/019
execute if entity @s[tag=stage_020] run function glarth:combat/stages/020
execute if entity @s[tag=stage_021] run function glarth:combat/stages/021
execute if entity @s[tag=stage_022] run function glarth:combat/stages/022
execute if entity @s[tag=stage_023] run function glarth:combat/stages/023
execute if entity @s[tag=stage_024] run function glarth:combat/stages/024
execute if entity @s[tag=stage_025] run function glarth:combat/stages/025
execute if entity @s[tag=stage_026] run function glarth:combat/stages/026
execute if entity @s[tag=stage_027] if score @s tbcBar matches ..40 run function glarth:combat/stages/027
execute if entity @s[tag=stage_028] if score @s tbcBar matches ..32 run function glarth:combat/stages/028
execute if entity @s[tag=stage_029] if score @s tbcBar matches ..25 run function glarth:combat/stages/029
execute if entity @s[tag=stage_030] if score @s tbcBar matches ..14 run function glarth:combat/stages/030
execute if entity @s[tag=stage_031] if score @s tbcBar matches ..06 run function glarth:combat/stages/031
execute if entity @s[tag=stage_032] run function glarth:combat/stages/032
execute if entity @s[tag=stage_033] run function glarth:combat/stages/033
execute if entity @s[tag=stage_034] run function glarth:combat/stages/034
execute if entity @s[tag=stage_060,tag=!tbcSkipThis] run function glarth:combat/stages/060
execute if entity @s[tag=stage_061] if score @s tbcBar matches ..10 run function glarth:combat/stages/061
execute if entity @s[tag=stage_065] run function glarth:combat/stages/065
execute if entity @s[tag=stage_075] run function glarth:combat/stages/075
execute if entity @s[tag=stage_076] run function glarth:combat/stages/076
execute if entity @s[tag=stage_077] run function glarth:combat/stages/077
execute if entity @s[tag=stage_078] run function glarth:combat/stages/078
execute if entity @s[tag=stage_079] if score @s tbcBar matches ..25 run function glarth:combat/stages/079
execute if entity @s[tag=stage_080] if score @s tbcBar matches ..10 run function glarth:combat/stages/080

# Low Health Auto Nerf
execute if entity @s[tag=stage_066] if entity @a[gamemode=adventure,scores={tbcHealth=..12}] run function glarth:combat/stages/066
execute if entity @s[tag=stage_067] unless entity @a[gamemode=adventure,scores={tbcHealth=..12}] run function glarth:combat/stages/067
execute if entity @s[tag=stage_068] if entity @a[gamemode=adventure,scores={tbcHealth=..10}] run function glarth:combat/stages/068
execute if entity @s[tag=stage_069] unless entity @a[gamemode=adventure,scores={tbcHealth=..10}] run function glarth:combat/stages/069
execute if entity @s[tag=stage_070] if entity @a[gamemode=adventure,scores={tbcHealth=..8}] run function glarth:combat/stages/070
execute if entity @s[tag=stage_071] unless entity @a[gamemode=adventure,scores={tbcHealth=..8}] run function glarth:combat/stages/071
execute if entity @s[tag=stage_072] if entity @a[gamemode=adventure,scores={tbcHealth=..6}] run function glarth:combat/stages/072
execute if entity @s[tag=stage_073] unless entity @a[gamemode=adventure,scores={tbcHealth=..6}] run function glarth:combat/stages/073

# Wither
execute if entity @s[tag=stage_054] run function glarth:combat/stages/054
execute if entity @s[tag=stage_055] run function glarth:combat/stages/055
execute if entity @s[tag=stage_056] run function glarth:combat/stages/056
execute if entity @s[tag=stage_057] run function glarth:combat/stages/057
execute if entity @s[tag=stage_058] run function glarth:combat/stages/058
execute if entity @s[tag=stage_059] run function glarth:combat/stages/059

# Ender Priest II
execute if entity @s[tag=stage_053] unless entity @e[tag=tbcEnemy2] unless entity @e[tag=tbcEnemy3] run function glarth:combat/stages/053
execute if entity @s[tag=stage_064] run function glarth:combat/stages/064
execute if entity @s[tag=!stage_053,tag=!tbcIgnoreThis] unless entity @e[tag=tbcEndCrystal] run function glarth:combat/stage_ep
execute if entity @s[tag=stage_062,tag=!tbcIgnoreThis] run function glarth:combat/stages/062
execute if entity @s[tag=stage_074,tag=!tbcIgnoreThis] run function glarth:combat/stages/074
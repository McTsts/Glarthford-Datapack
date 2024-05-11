# Skip
execute if entity @s[tag=stage_062] run tag @s add tbcDontThis

# Bat Empress
execute if entity @s[tag=stage_035,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..50 run function glarth:combat/stages/035
execute if entity @s[tag=stage_035] if score @s tbcBar matches ..45 run function glarth:combat/stages/063

# Roberto Rizzo
execute if entity @s[tag=stage_036,tag=!stage_035,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..45 run function glarth:combat/stages/036
execute if entity @s[tag=stage_037,tag=!stage_036,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..45 run function glarth:combat/stages/037
execute if entity @s[tag=stage_037,tag=!stage_035] if score @s tbcBar matches ..40 run function glarth:combat/stages/063

# Raid Captain
execute if entity @s[tag=stage_038,tag=!stage_037,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..40 run function glarth:combat/stages/038
execute if entity @s[tag=stage_039,tag=!stage_038,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..40 run function glarth:combat/stages/039
execute if entity @s[tag=stage_039,tag=!stage_037] if score @s tbcBar matches ..35 run function glarth:combat/stages/063

# Skeleton King
execute if entity @s[tag=stage_040,tag=!stage_039,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..35 run function glarth:combat/stages/040
execute if entity @s[tag=stage_041,tag=!stage_040,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..35 run function glarth:combat/stages/041
execute if entity @s[tag=stage_041,tag=!stage_039] if score @s tbcBar matches ..30 run function glarth:combat/stages/063

# Netheran
execute if entity @s[tag=stage_042,tag=!stage_041,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..30 run function glarth:combat/stages/042
execute if entity @s[tag=stage_043,tag=!stage_042,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..30 run function glarth:combat/stages/043
execute if entity @s[tag=stage_043,tag=!stage_041] if score @s tbcBar matches ..24 run function glarth:combat/stages/063

# Vishnold
execute if entity @s[tag=stage_044,tag=!stage_043,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..24 run function glarth:combat/stages/044
execute if entity @s[tag=stage_045,tag=!stage_044,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..24 run function glarth:combat/stages/045
execute if entity @s[tag=stage_045,tag=!stage_043] if score @s tbcBar matches ..18 run function glarth:combat/stages/063

# Piglin
execute if entity @s[tag=stage_046,tag=!stage_045,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..18 run function glarth:combat/stages/046
execute if entity @s[tag=stage_047,tag=!stage_046,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..18 run function glarth:combat/stages/047
execute if entity @s[tag=stage_047,tag=!stage_045] if score @s tbcBar matches ..12 run function glarth:combat/stages/063

# Grimsbane
execute if entity @s[tag=stage_048,tag=!stage_047,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..12 run function glarth:combat/stages/048
execute if entity @s[tag=stage_049,tag=!stage_048,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..12 run function glarth:combat/stages/049
execute if entity @s[tag=stage_049,tag=!stage_047] if score @s tbcBar matches ..07 run function glarth:combat/stages/063

# Necromancer
execute if entity @s[tag=stage_050,tag=!stage_049,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..07 run function glarth:combat/stages/050
execute if entity @s[tag=stage_051,tag=!stage_050,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=tbcEnderMorphed] if score @s tbcBar matches ..07 run function glarth:combat/stages/051
execute if entity @s[tag=stage_051,tag=!stage_049] if score @s tbcBar matches ..03 run function glarth:combat/stages/063

# Final
execute if entity @s[tag=stage_052,tag=!stage_051,tag=!tbcIgnoreThis,tag=!tbcDontThis,tag=!tbcEnderMorphed] if score @s tbcBar matches ..00 run function glarth:combat/stages/052

# Skip
tag @s remove tbcDontThis
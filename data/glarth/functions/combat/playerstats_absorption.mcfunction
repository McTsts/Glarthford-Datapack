execute if score @s tbcAbsorption matches 1..4 unless score @s tbcAbsorptionX matches 1 run effect give @s minecraft:absorption infinite 0 true
execute if score @s tbcAbsorption matches 1..4 unless score @s tbcAbsorptionX matches 1 run scoreboard players set @s tbcAbsorptionX 1
execute if score @s tbcAbsorption matches 5..8 unless score @s tbcAbsorptionX matches 2 run effect give @s minecraft:absorption infinite 1 true
execute if score @s tbcAbsorption matches 5..8 unless score @s tbcAbsorptionX matches 2 run scoreboard players set @s tbcAbsorptionX 2
execute if score @s tbcAbsorption matches 9..12 unless score @s tbcAbsorptionX matches 3 run effect give @s minecraft:absorption infinite 2 true
execute if score @s tbcAbsorption matches 9..12 unless score @s tbcAbsorptionX matches 3 run scoreboard players set @s tbcAbsorptionX 3
execute if score @s tbcAbsorption matches 13..16 unless score @s tbcAbsorptionX matches 4 run effect give @s minecraft:absorption infinite 3 true
execute if score @s tbcAbsorption matches 13..16 unless score @s tbcAbsorptionX matches 4 run scoreboard players set @s tbcAbsorptionX 4
execute if score @s tbcAbsorption matches 17..20 unless score @s tbcAbsorptionX matches 5 run effect give @s minecraft:absorption infinite 4 true
execute if score @s tbcAbsorption matches 17..20 unless score @s tbcAbsorptionX matches 5 run scoreboard players set @s tbcAbsorptionX 5
execute if score @s tbcAbsorption < @s tbcAbsorptionXX run effect give @s minecraft:wither 1 1 true
execute if score @s tbcAbsorption > @s tbcAbsorptionXX run scoreboard players remove @s tbcAbsorptionX 1
tag @s remove tbcApplyAbsorption

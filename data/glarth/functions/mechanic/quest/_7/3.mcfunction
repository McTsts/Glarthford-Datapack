execute positioned ~ 46 ~ if entity @s[distance=..10] run data merge entity @s {BatFlags:1b}
execute positioned ~ 46 ~ if entity @s[distance=10..13] run data merge entity @s {BatFlags:0b}
execute if block ~ ~1 ~ barrier run data merge entity @s {BatFlags:0b}
execute if block ~ ~0.5 ~ barrier run data merge entity @s {BatFlags:0b}
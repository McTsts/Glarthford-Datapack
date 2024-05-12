#65 Astronomer | 10:00-12:59 to Pufferfish
function glarth:dialogue/astronomer/lines/trade1
function glarth:items/util/give {item:"trades.astronomer.1"}
execute as @e[tag=astronomer,type=armor_stand] at @s rotated 260 ~ run tp @s ~ ~0.1 ~ ~ ~
tag @e[tag=astronomer,type=armor_stand] add a
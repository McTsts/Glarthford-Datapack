# Remove Default Netheran Attacks
function glarth:combat/remove_all

# Add Netheran Dragon Attacks
scoreboard players set @s attack_052 1001
scoreboard players set @s attack_053 1001



tag @s remove stage_002

function glarth:dialogue/netheran/lines/stage1
tag @s add NetheranLineSkip
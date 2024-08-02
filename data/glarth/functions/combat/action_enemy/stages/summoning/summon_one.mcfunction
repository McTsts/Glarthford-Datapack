#$say $(id) $(type) $(summoned_command)
$execute at @e[tag=tbcMarkerEnemy$(id),limit=1] run function glarth:combat/init_tbc/enemy$(id)
$execute as @e[tag=tbcEnemy$(id),type=armor_stand] run function glarth:combat/entity/$(type)
$execute as @e[tag=tbcEnemy$(id),type=armor_stand] run $(summoned_command)
$execute as @e[tag=tbcEnemy$(id),type=armor_stand] run function glarth:combat/set_loc
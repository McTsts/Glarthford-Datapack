$execute if score noEnemy Temp matches $(id) at @e[tag=tbcMarkerEnemy$(id),limit=1] run function glarth:combat/init_tbc/enemy$(id)
$execute if score noEnemy Temp matches $(id) as @e[tag=tbcEnemy$(id),type=armor_stand] run function glarth:combat/entity/$(type)
$execute if score noEnemy Temp matches $(id) as @e[tag=tbcEnemy$(id),type=armor_stand] run $(summoned_command)
$execute if score noEnemy Temp matches $(id) as @e[tag=tbcEnemy$(id),type=armor_stand] run function glarth:combat/set_loc
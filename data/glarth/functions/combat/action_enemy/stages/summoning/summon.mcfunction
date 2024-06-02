# because macros cant access array/object contents we have to write it to storage, then split it up into individual keys and then give that whole storage object to the next function
data modify storage glarth:main temp set value {type_1:"",type_2:"",type_3:"",type_4:"",type_5:"",types:[],summoned_command:""}
$data modify storage glarth:main temp.summoned_command set value "$(summoned_command)"
$data modify storage glarth:main temp.types set value $(types)
execute if data storage glarth:main temp.types[0] run data modify storage glarth:main temp.type_1 set from storage glarth:main temp.types[0]
execute if data storage glarth:main temp.types[1] run data modify storage glarth:main temp.type_2 set from storage glarth:main temp.types[1]
execute if data storage glarth:main temp.types[2] run data modify storage glarth:main temp.type_3 set from storage glarth:main temp.types[2]
execute if data storage glarth:main temp.types[3] run data modify storage glarth:main temp.type_4 set from storage glarth:main temp.types[3]
execute if data storage glarth:main temp.types[4] run data modify storage glarth:main temp.type_5 set from storage glarth:main temp.types[4]

# call actual summon function
$function glarth:combat/action_enemy/stages/summoning/summon_$(type)_$(num) with storage glarth:main temp

# next
function glarth:combat/action_enemy/util/next_stage
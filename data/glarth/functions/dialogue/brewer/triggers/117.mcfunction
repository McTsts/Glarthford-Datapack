#117 Brewer | Take Potion
function glarth:dialogue/brewer/lines/trade5

# Swiftness (Default)
execute if score quest Stats matches 4 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]']},CustomPotionColor:8239305,CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3580,ShowParticles:0b}],HideFlags:63,custom:"swiftness"} 1
execute if score quest Stats matches 5 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]']},CustomPotionColor:8239305,CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3580,ShowParticles:0b}],HideFlags:63,custom:"swiftness"} 1
execute if score quest Stats matches 6 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]']},CustomPotionColor:8239305,CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3580,ShowParticles:0b}],HideFlags:63,custom:"swiftness"} 1
execute if score quest Stats matches 9 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]']},CustomPotionColor:8239305,CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3580,ShowParticles:0b}],HideFlags:63,custom:"swiftness"} 1
execute if score quest Stats matches 10 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]']},CustomPotionColor:8239305,CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3580,ShowParticles:0b}],HideFlags:63,custom:"swiftness"} 1
execute if score quest Stats matches 11 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]']},CustomPotionColor:8239305,CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3580,ShowParticles:0b}],HideFlags:63,custom:"swiftness"} 1
# Jump (Mines)
execute if score quest Stats matches 1 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.leaping","italic":false}',Lore:['[{"translate":"effect.minecraft.jump_boost","color":"blue","italic":false}," II (1:3±)"]']},CustomPotionColor:1106019,CustomPotionEffects:[{Id:8,Amplifier:1,Duration:1800,ShowParticles:0b}],HideFlags:63,custom:"leaping"} 1
execute if score quest Stats matches 2 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.leaping","italic":false}',Lore:['[{"translate":"effect.minecraft.jump_boost","color":"blue","italic":false}," II (1:3±)"]']},CustomPotionColor:1106019,CustomPotionEffects:[{Id:8,Amplifier:1,Duration:1820,ShowParticles:0b}],HideFlags:63,custom:"leaping"} 1
# Fire Resistance (Nether)
execute if score quest Stats matches 3 run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.fire_resistance","italic":false}',Lore:['[{"translate":"effect.minecraft.fire_resistance","color":"blue","italic":false}," (3:±±)"]']},CustomPotionColor:16753433,CustomPotionEffects:[{Id:12,Amplifier:0,Duration:3600,ShowParticles:0b}],HideFlags:63,custom:"fire_resistance"} 1
execute if score quest Stats matches 8 unless entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.fire_resistance","italic":false}',Lore:['[{"translate":"effect.minecraft.fire_resistance","color":"blue","italic":false}," (3:±±)"]']},CustomPotionColor:16753433,CustomPotionEffects:[{Id:12,Amplifier:0,Duration:3600,ShowParticles:0b}],HideFlags:63,custom:"fire_resistance"} 1
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run give @s potion{display:{Name:'{"translate":"item.minecraft.potion.effect.regeneration","italic":false}',Lore:['[{"translate":"effect.minecraft.regeneration","color":"blue","italic":false}," (3:±±)"]']},CustomPotionColor:16755700,CustomPotionEffects:[{Id:12,Amplifier:0,Duration:3600,ShowParticles:0b}],HideFlags:63,custom:"regeneration"} 1
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run function glarth:mechanic/dim_nether/piglin_move3
execute if score quest Stats matches 8 if entity @e[tag=brewer,tag=regenPotion,tag=!regenPotionDone] run tag @e[tag=brewer,type=armor_stand] add regenPotionDone
# Energizing (Ruins of Ascension)
execute if score quest Stats matches 7 run give @s minecraft:potion{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:2400,ShowParticles:0b},{Id:3,Duration:2400,ShowParticles:0b},{Id:8,Amplifier:1,Duration:2400,ShowParticles:0b}],CustomPotionColor:4718532,display:{Name:"{\"translate\":\"item.energizing_potion\",\"italic\":false}",Lore:['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," II (2:±±)"]','[{"translate":"effect.minecraft.haste","color":"blue","italic":false}," (2:±±)"]','[{"translate":"effect.minecraft.jump_boost","color":"blue","italic":false}," II (2:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+4±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]','[{"text":"+1±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.attackSpeed"}]']},custom:"energizing_potion",Potion:"none",HideFlags:63} 1


tag @e[tag=brewer,type=armor_stand] remove a
tag @e[tag=brewer,type=armor_stand] remove b
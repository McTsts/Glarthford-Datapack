#68 Child | Rotten Flesh to Speed Potion
function glarth:dialogue/checkminer/lines/trade1
function glarth:mechanic/tip/36
clear @s rotten_flesh 1
give @s minecraft:potion[custom_name='{"translate":"item.minecraft.potion.effect.swiftness","italic":false}',lore=['[{"translate":"effect.minecraft.speed","color":"blue","italic":false}," (3:±±)"]','""','{"translate":"potion.whenDrank","color":"purple","italic":false}','[{"text":"+2±% ","color":"blue","italic":false},{"translate":"attribute.name.generic.movementSpeed"}]'],potion_contents={custom_color:8239305},hide_additional_tooltip={},custom_data={CustomPotionEffects:[{Id:1,Amplifier:0,Duration:3600,ShowParticles:0b}],custom:"swiftness"}] 1
tag @e[tag=checkminer,type=armor_stand] add a
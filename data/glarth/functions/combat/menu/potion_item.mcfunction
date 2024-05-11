execute if score A tbcAttackParamX matches 1 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.leaping","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.speed_boost","with":[{"translate":"tbc.attack.msg.name.damage.small"}]}]}'},HideFlags:63,Potion:"leaping",CustomModelData:31}
execute if score A tbcAttackParamX matches 2 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.swiftness","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.speed_boost","with":[{"translate":"tbc.attack.msg.name.damage.high"}]}]}'},HideFlags:63,Potion:"swiftness",CustomModelData:32}
execute if score A tbcAttackParamX matches 3 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.fire_resistance","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.fire_resistance"}]}'},HideFlags:63,Potion:"fire_resistance",CustomModelData:33}
execute if score A tbcAttackParamX matches 4 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.energizing","italic":false,"bold":true},[{"translate":"tbc.attack.msg.name.speed_boost","with":[{"translate":"tbc.attack.msg.name.damage.small"}]},{"text":", "},{"translate":"tbc.attack.msg.name.regeneration"}]]}'},HideFlags:63,Potion:"none",CustomPotionColor: 4718532,CustomModelData:34}
execute if score A tbcAttackParamX matches 5 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.healing","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.instant_health","with":[{"text":"I"}]}]}'},HideFlags:63,Potion:"healing",CustomModelData:35}
execute if score A tbcAttackParamX matches 6 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.strong_healing","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.instant_health","with":[{"text":"II"}]}]}'},HideFlags:63,Potion:"strong_healing",CustomModelData:36}
execute if score A tbcAttackParamX matches 7 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.water","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.clears","with":[{"translate":"tbc.attack.msg.name.fire2"}]}]}'},HideFlags:63,Potion:"strong_healing",CustomModelData:39}
execute if score A tbcAttackParamX matches 8 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.milk","italic":false,"bold":true},{"translate":"tbc.attack.msg.name.clears","with":[[{"translate":"tbc.attack.msg.name.poison"},{"text":", "},{"translate":"tbc.attack.msg.name.wither"},{"text":", "},{"translate":"tbc.attack.msg.name.infection"},{"translate":"tbc.msg.ampersand"},{"translate":"tbc.attack.msg.name.blindness2"}]]}]}'},HideFlags:63,Potion:"strong_healing",CustomModelData:40}
execute if score A tbcAttackParamX matches 9 if score @s tbcPotion matches 1.. run give @s minecraft:gold_nugget{display:{Name:'{"translate":"tbc.attack.msg.name","italic":false,"with":[{"translate":"tbc.attack.potion.wind","italic":false,"bold":true},{"translate":"tbc.lore.wind_potion"}]}'},HideFlags:63,CustomModelData:32}


scoreboard players remove @s tbcPotion 1
execute if score @s tbcPotion matches 1.. run function glarth:combat/menu/potion_item


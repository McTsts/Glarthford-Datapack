function glarth:combat/menu/main_get_unlocked
## Attacks
# No Stamina
execute if score 0_melee tbcUnlocked matches 1 run item replace entity @s hotbar.0 with minecraft:structure_void[custom_name='{"translate":"tbc.attack.msg.name","color":"white","with":[{"translate":"tbc.attack.unavailable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"2","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 1_staff tbcUnlocked matches 1 run item replace entity @s hotbar.1 with minecraft:structure_void[custom_name='{"translate":"tbc.attack.msg.name","color":"white","with":[{"translate":"tbc.attack.unavailable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"5","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 2_bow tbcUnlocked matches 1 run item replace entity @s hotbar.2 with minecraft:structure_void[custom_name='{"translate":"tbc.attack.msg.name","color":"white","with":[{"translate":"tbc.attack.unavailable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"4","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 3_throwable tbcUnlocked matches 1 run item replace entity @s hotbar.3 with minecraft:structure_void[custom_name='{"translate":"tbc.attack.msg.name","color":"white","with":[{"translate":"tbc.attack.unavailable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"3","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 4_breakfree tbcUnlocked matches 1 run item replace entity @s hotbar.4 with minecraft:structure_void[custom_name='{"translate":"tbc.attack.msg.name","color":"white","with":[{"translate":"tbc.attack.unavailable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"2","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
# Can't Move
execute if score 0_melee tbcUnlocked matches 2 run item replace entity @s hotbar.0 with minecraft:diamond_hoe[damage=242,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.unusable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"2","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 1_staff tbcUnlocked matches 2 run item replace entity @s hotbar.1 with minecraft:diamond_hoe[damage=242,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.unusable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"5","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 2_bow tbcUnlocked matches 2 run item replace entity @s hotbar.2 with minecraft:diamond_hoe[damage=242,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.unusable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"4","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
execute if score 3_throwable tbcUnlocked matches 2 run item replace entity @s hotbar.3 with minecraft:diamond_hoe[damage=242,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.unusable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"3","color":"red"}]}],"italic":false}',hide_additional_tooltip={}]
# Attacks
execute if score 0_melee tbcUnlocked matches 3 run item replace entity @s hotbar.0 with minecraft:wooden_sword[custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.melee","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"2","color":"red"}]}],"italic":false}',lore=['{"translate":"tbc.lore.melee.1","color":"gray","italic":false}','""','{"translate":"tbc.lore.melee.2","color":"gray","italic":false}','{"translate":"tbc.lore.melee.3","color":"gray","italic":false}','{"translate":"tbc.lore.melee.4","color":"gray","italic":false}','{"translate":"tbc.lore.melee.5","color":"gray","italic":false}','{"translate":"tbc.lore.melee.6","color":"gray","italic":false}'],hide_additional_tooltip={}]
execute if score 1_staff tbcUnlocked matches 3 run item replace entity @s hotbar.1 with minecraft:stick[custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.staff","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"5","color":"red"}]}],"italic":false}',lore=['{"translate":"tbc.lore.staff.1","color":"gray","italic":false}','""','{"translate":"tbc.lore.staff.2","color":"gray","italic":false}','{"translate":"tbc.lore.staff.3","color":"gray","italic":false}','{"translate":"tbc.lore.staff.4","color":"gray","italic":false}','{"translate":"tbc.lore.staff.5","color":"gray","italic":false}','{"translate":"tbc.lore.staff.6","color":"gray","italic":false}','{"translate":"tbc.lore.staff.7","color":"gray","italic":false}'],hide_additional_tooltip={}]
execute if score 2_bow tbcUnlocked matches 3 run item replace entity @s hotbar.2 with minecraft:bow[custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.bow","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"4","color":"red"}]}],"italic":false}',lore=['{"translate":"tbc.lore.bow.1","color":"gray","italic":false}','""','{"translate":"tbc.lore.bow.2","color":"gray","italic":false}','{"translate":"tbc.lore.bow.3","color":"gray","italic":false}','{"translate":"tbc.lore.bow.4","color":"gray","italic":false}','{"translate":"tbc.lore.bow.5","color":"gray","italic":false}','{"translate":"tbc.lore.bow.6","color":"gray","italic":false}'],hide_additional_tooltip={}]
execute if score 3_throwable tbcUnlocked matches 3 run item replace entity @s hotbar.3 with minecraft:diamond_hoe[custom_model_data=25,custom_name='{"translate":"tbc.attack.msg.name","with":[{"translate":"tbc.attack.throwable","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"3","color":"red"}]}],"italic":false}',lore=['{"translate":"tbc.lore.throwable.1","color":"gray","italic":false}','""','{"translate":"tbc.lore.throwable.2","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.3","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.4","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.5","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.6","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.7","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.8","color":"gray","italic":false}','{"translate":"tbc.lore.throwable.9","color":"gray","italic":false}'],hide_additional_tooltip={}]
execute if score 4_breakfree tbcUnlocked matches 3 run item replace entity @s hotbar.4 with minecraft:nether_star[custom_name='{"translate":"tbc.attack.msg.name","color":"white","with":[{"translate":"tbc.attack.breakfree","bold":true},{"translate":"tbc.attack.msg.name.stamina","with":[{"text":"2","color":"red"}]}],"italic":false}',lore=['{"translate":"tbc.lore.breakfree.1","color":"gray","italic":false}','""','{"translate":"tbc.lore.breakfree.2","color":"gray","italic":false}','{"translate":"tbc.lore.breakfree.3","color":"gray","italic":false}','{"translate":"tbc.lore.breakfree.4","color":"gray","italic":false}','{"translate":"tbc.lore.breakfree.5","color":"gray","italic":false}','{"translate":"tbc.lore.breakfree.6","color":"gray","italic":false}','{"translate":"tbc.lore.breakfree.7","color":"gray","italic":false}','{"translate":"tbc.lore.breakfree.8","color":"gray","italic":false}'],hide_additional_tooltip={}]
## Other
execute if score 5_potion tbcUnlocked matches 3 run item replace entity @s hotbar.5 with minecraft:gold_nugget[unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.potion","italic":false,"bold":true}',lore=['{"translate":"tbc.lore.potion.1","color":"gray","italic":false}','{"translate":"tbc.lore.potion.2","color":"gray","italic":false}','{"translate":"tbc.lore.potion.3","color":"gray","italic":false}'],custom_model_data=39,hide_additional_tooltip={}]
execute if score 6_pouch tbcUnlocked matches 3 run item replace entity @s hotbar.6 with minecraft:diamond_hoe[damage=253,unbreakable={show_in_tooltip:0b},custom_name='{"translate":"tbc.attack.pouch","italic":false,"bold":true}',lore=['{"translate":"tbc.lore.pouch.1","color":"gray","italic":false}','{"translate":"tbc.lore.pouch.2","color":"gray","italic":false}','{"translate":"tbc.lore.pouch.3","color":"gray","italic":false}'],hide_additional_tooltip={}]
execute if score 7_select tbcUnlocked matches 3 run item replace entity @s hotbar.7 with minecraft:name_tag[custom_name='{"translate":"tbc.attack.options.select","italic":false,"bold":true}',lore=['{"translate":"tbc.lore.target.1","color":"gray","italic":false}','{"translate":"tbc.lore.target.2","color":"gray","italic":false}']]
execute if score 8_options tbcUnlocked matches 3 run item replace entity @s hotbar.8 with minecraft:music_disc_stal[custom_name='{"translate":"tbc.attack.options","italic":false,"bold":true,"color":"aqua"}',lore=['{"translate":"tbc.lore.options.1","color":"gray","italic":false}','{"translate":"tbc.lore.options.2","color":"gray","italic":false}','{"translate":"tbc.lore.options.3","color":"gray","italic":false}'],hide_additional_tooltip={}]
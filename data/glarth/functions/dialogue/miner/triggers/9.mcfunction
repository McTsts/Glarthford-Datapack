#9 Miner | Freshly Baked Bread to Stone Pickaxe
function glarth:dialogue/miner/lines/trade1
clear @s bread[custom_data={custom:"fresh_bread"}] 1 
give @s minecraft:stone_pickaxe[custom_name='{"italic":false,"translate":"item.pickaxe_miner"}',can_break={blocks:"gravel"}] 1
tag @e[tag=miner,type=armor_stand] add a
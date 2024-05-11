#108 Bucket Merchant | Take Wooden Bucket
function glarth:dialogue/bucketm/lines/trade2
give @s minecraft:diamond_hoe[custom_name='{"italic":false,"translate":"item.wooden_bucket"}',unbreakable={show_in_tooltip:0b},damage=241,hide_additional_tooltip={}] 1
kill @e[tag=mbBucket]
tag @e[tag=bucketm,type=armor_stand] remove make_bucket
tag @e[tag=bucketm,type=armor_stand] remove b
tag @e[tag=bucketm,type=armor_stand] add c
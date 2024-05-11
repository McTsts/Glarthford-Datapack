#108 Bucket Merchant | Take Wooden Bucket
function glarth:dialogue/bucketm/lines/trade2
give @s minecraft:diamond_hoe{display:{Name:"{\"italic\":false,\"translate\":\"item.wooden_bucket\"}"},Unbreakable:1,HideFlags:63,Damage:241} 1
kill @e[tag=mbBucket]
tag @e[tag=bucketm,type=armor_stand] remove make_bucket
tag @e[tag=bucketm,type=armor_stand] remove b
tag @e[tag=bucketm,type=armor_stand] add c
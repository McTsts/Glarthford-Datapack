#108 Bucket Merchant | Take Wooden Bucket
function glarth:dialogue/bucketm/lines/trade2
function glarth:items/util/give {item:"trades.bucketm.1"} 
kill @e[tag=mbBucket]
tag @e[tag=bucketm,type=armor_stand] remove make_bucket
tag @e[tag=bucketm,type=armor_stand] remove b
tag @e[tag=bucketm,type=armor_stand] add c
tag @a remove holdBucket
tag @a[nbt={SelectedItem:{id:"minecraft:bucket"}}] add holdBucket 
tag @e[tag=bucket_ghast] add hurt
tag @e[tag=bucket_ghast,nbt={HurtTime:0s}] remove hurt 
execute as @e[tag=bucket_ghast,tag=hurt] at @s as @r[tag=holdBucket,distance=..10] run fill -6 22 -102 -4 20 -104 air destroy
execute as @e[tag=bucket_ghast,tag=hurt] at @s as @r[tag=holdBucket,distance=..10] run clear @s bucket 1
execute as @e[tag=bucket_ghast,tag=hurt] at @s as @r[tag=holdBucket,distance=..10] run give @s minecraft:diamond_hoe{display:{Name:"{\"text\":\"item.bucket_slime\",\"italic\":false}"},Unbreakable:1,HideFlags:63} 1
execute as @e[tag=bucket_ghast,tag=hurt] at @s as @r[tag=holdBucket,distance=..10] run kill @e[tag=bucket_name] 
execute as @e[tag=bucket_ghast,tag=hurt] at @s as @r[tag=holdBucket,distance=..10] run data merge entity @e[tag=bucket_ghast,limit=1] {DeathTime:19s,Health:0.0f}
scoreboard players tag @a remove holdBucket
scoreboard players tag @a add holdBucket {SelectedItem:{id:"minecraft:bucket"}}
scoreboard players tag @e[tag=bucket_ghast] add hurt
scoreboard players tag @e[tag=bucket_ghast] remove hurt {HurtTime:0s}
execute @e[tag=bucket_ghast] ~ ~ ~ execute @s[tag=hurt] ~ ~ ~ execute @r[tag=holdBucket,r=10] ~ ~ ~ fill -6 22 -102 -4 20 -104 air 0 destroy
execute @e[tag=bucket_ghast] ~ ~ ~ execute @s[tag=hurt] ~ ~ ~ execute @r[tag=holdBucket,r=10] ~ ~ ~ clear @s bucket 0 1
execute @e[tag=bucket_ghast] ~ ~ ~ execute @s[tag=hurt] ~ ~ ~ execute @r[tag=holdBucket,r=10] ~ ~ ~ give @s minecraft:diamond_hoe 1 45 {display:{LocName:"item.bucket_slime"},Unbreakable:1,HideFlags:63}
execute @e[tag=bucket_ghast] ~ ~ ~ execute @s[tag=hurt] ~ ~ ~ execute @r[tag=holdBucket,r=10] ~ ~ ~ kill @e[tag=bucket_name] 
execute @e[tag=bucket_ghast] ~ ~ ~ execute @s[tag=hurt] ~ ~ ~ execute @r[tag=holdBucket,r=10] ~ ~ ~ entitydata @e[tag=bucket_ghast] {DeathTime:19s,Health:0.0f}
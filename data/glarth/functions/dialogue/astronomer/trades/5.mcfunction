# Meteor -> Pufferfish Bucket
execute as @s[tag=!a] if score time Dis matches 1000..1259 run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"astronomer.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 65"}}]
execute as @s[tag=!a] unless score time Dis matches 1000..1259 run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"astronomer.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 66"}}]
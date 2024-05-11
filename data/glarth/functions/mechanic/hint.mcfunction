tellraw @a[x=-13,y=27,z=-136,r=5,m=2,tag=!hint1] ["",{"translate":"hint.dive","color":"gray","italic":true}]
execute @a[x=-13,y=27,z=-136,r=5,m=2,tag=!hint1] ~ ~ ~ playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
scoreboard players tag @a[x=-13,y=27,z=-136,r=5,m=2,tag=!hint1] add hint1

tellraw @a[x=-13,y=26,z=-176,r=5,m=2,tag=!hint2] ["",{"translate":"hint.grave","color":"gray","italic":true}]
execute @a[x=-13,y=26,z=-176,r=5,m=2,tag=!hint2] ~ ~ ~ playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
scoreboard players tag @a[x=-13,y=26,z=-176,r=5,m=2,tag=!hint2] add hint2

tellraw @a[x=-81,y=27,z=-209,r=5,m=2,tag=!hint3] ["",{"translate":"hint.graves","color":"gray","italic":true}]
execute @a[x=-81,y=27,z=-209,r=5,m=2,tag=!hint3] ~ ~ ~ playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
scoreboard players tag @a[x=-81,y=27,z=-209,r=5,m=2,tag=!hint3] add hint3

execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @a add hint4
tellraw @a[x=98,y=32,z=-170,r=5,m=2,tag=!hint4] ["",{"translate":"hint.mine","color":"gray","italic":true}]
execute @a[x=98,y=32,z=-170,r=5,m=2,tag=!hint4] ~ ~ ~ playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
scoreboard players tag @a[x=98,y=32,z=-170,r=5,m=2,tag=!hint4] add hint4

tellraw @a[x=-3,y=19,z=-127,r=5,m=2,tag=!hint5] ["",{"translate":"hint.equipment","color":"gray","italic":true}]
execute @a[x=-3,y=19,z=-127,r=5,m=2,tag=!hint5] ~ ~ ~ playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
scoreboard players tag @a[x=-3,y=19,z=-127,r=5,m=2,tag=!hint5] add hint5

tellraw @a[x=64,y=26,z=-194,r=5,m=2,tag=!hint6] ["",{"translate":"hint.cant","color":"gray","italic":true}]
execute @a[x=64,y=26,z=-194,r=5,m=2,tag=!hint6] ~ ~ ~ playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
scoreboard players tag @a[x=64,y=26,z=-194,r=5,m=2,tag=!hint6] add hint6

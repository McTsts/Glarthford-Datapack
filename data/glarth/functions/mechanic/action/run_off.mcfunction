scoreboard players add @s action 1
tp @s[scores={action=1..5}] ~ ~ ~0.4
execute as @s[scores={action=1..1}] run fill -9 26 -199 -7 28 -199 minecraft:air replace barrier
execute as @s[scores={action=1..1}] run effect give @a[gamemode=adventure] invisibility 7 5 true
execute as @s[scores={action=2..2}] at @s if score realms Stats matches 0 unless entity @a[scores={playerid=1,charSpouse=2}] run summon minecraft:item ~ ~ ~ {Item:{id:"paper",Count:1,tag:{display:{Name:"{\"translate\":\"item.rletter\",\"italic\":false}",Lore:['{"translate":"lore.rletter.1.a","color":"gray","italic":false}','{"translate":"lore.rletter.2.a","color":"gray","italic":false}','{"translate":"lore.rletter.3.a","color":"gray","italic":false}']}}},CustomName:"{\"translate\":\"item.rletter\",\"italic\":false}",CustomNameVisible:1}
execute as @s[scores={action=2..2}] at @s if score realms Stats matches 0 if entity @a[scores={playerid=1,charSpouse=2}] run summon minecraft:item ~ ~ ~ {Item:{id:"paper",Count:1,tag:{display:{Name:"{\"translate\":\"item.rletter\",\"italic\":false}",Lore:['{"translate":"lore.rletter.1.b","color":"gray","italic":false}','{"translate":"lore.rletter.2.b","color":"gray","italic":false}','{"translate":"lore.rletter.3.b","color":"gray","italic":false}']}}},CustomName:"{\"translate\":\"item.rletter\",\"italic\":false}",CustomNameVisible:1}
execute as @s[scores={action=2..2}] at @s if score realms Stats matches 1 unless entity @a[scores={playerid=1,charSpouse=2}] run summon minecraft:item ~ ~ ~ {Item:{id:"paper",Count:1,tag:{display:{Name:"{\"translate\":\"item.rletter\",\"italic\":false}",Lore:['{"translate":"lore.rletter.1.c","color":"gray","italic":false}','{"translate":"lore.rletter.2.c","color":"gray","italic":false}','{"translate":"lore.rletter.3.c","color":"gray","italic":false}']}}},CustomName:"{\"translate\":\"item.rletter\",\"italic\":false}",CustomNameVisible:1}
execute as @s[scores={action=2..2}] at @s if score realms Stats matches 1 if entity @a[scores={playerid=1,charSpouse=2}] run summon minecraft:item ~ ~ ~ {Item:{id:"paper",Count:1,tag:{display:{Name:"{\"translate\":\"item.rletter\",\"italic\":false}",Lore:['{"translate":"lore.rletter.1.d","color":"gray","italic":false}','{"translate":"lore.rletter.2.d","color":"gray","italic":false}','{"translate":"lore.rletter.3.d","color":"gray","italic":false}']}}},CustomName:"{\"translate\":\"item.rletter\",\"italic\":false}",CustomNameVisible:1}
execute as @s[scores={action=2..2}] run effect give @a[gamemode=adventure] slowness 2 5 true
execute as @s[scores={action=2..2}] run setblock -8 26 -200 minecraft:barrier
tp @s[scores={action=6..14}] ~0.2 ~ ~0.2 ~-10 ~
execute as @s[scores={action=15..15}] run setblock -8 26 -200 air
tp @s[scores={action=15..32}] ~0.4 ~ ~ ~ ~
tp @s[scores={action=33..41}] ~0.2 ~ ~-0.2 ~-10 ~
tp @s[scores={action=42..50}] ~0.2 ~ ~-0.2 ~10 ~
tp @s[scores={action=51..59}] ~0.2 ~ ~-0.2 ~-10 ~
tp @s[scores={action=60..100}] ~ ~ ~-0.4 ~ ~
execute as @s[scores={action=100..100}] run particle smoke ~ ~ ~ 1 1 1 0.1 100
kill @s[scores={action=100..100}]
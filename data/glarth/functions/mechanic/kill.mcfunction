execute if entity @s[tag=firefly] run function glarth:mechanic/animation/firefly/kill
execute if entity @s[tag=party_torch] at @s run fill ~ ~ ~ ~ ~ ~ air replace lantern
execute if entity @s[tag=halloweenJOL] at @s run fill ~ ~1.425 ~ ~ ~1.425 ~ air replace conduit
execute if entity @s[tag=halloweenJOL] at @s run fill ~ ~1.425 ~ ~ ~1.425 ~ air replace lantern

data merge entity @s {Health:0.0f,DeathTime:19s}
tp @s ~ -100 ~
kill @s
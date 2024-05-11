scoreboard players add @s enchAnimBob 1
execute as @s[scores={enchAnimBob=1..2}] at @s run tp @s ~ ~0.0002 ~ ~15 ~
execute as @s[scores={enchAnimBob=3..5}] at @s run tp @s ~ ~0.0005 ~ ~15 ~
execute as @s[scores={enchAnimBob=6..15}] at @s run tp @s ~ ~0.001 ~ ~15 ~
execute as @s[scores={enchAnimBob=16..18}] at @s run tp @s ~ ~0.0005 ~ ~15 ~
execute as @s[scores={enchAnimBob=19..20}] at @s run tp @s ~ ~0.0002 ~ ~15 ~
execute as @s[scores={enchAnimBob=21..22}] at @s run tp @s ~ ~-0.0002 ~ ~15 ~
execute as @s[scores={enchAnimBob=23..25}] at @s run tp @s ~ ~-0.0005 ~ ~15 ~
execute as @s[scores={enchAnimBob=26..35}] at @s run tp @s ~ ~-0.001 ~ ~15 ~
execute as @s[scores={enchAnimBob=36..38}] at @s run tp @s ~ ~-0.0005 ~ ~15 ~
execute as @s[scores={enchAnimBob=39..40}] at @s run tp @s ~ ~-0.0002 ~ ~15 ~
scoreboard players set @s[scores={enchAnimBob=40}] enchAnimBob 0
tag @s add enchTemp
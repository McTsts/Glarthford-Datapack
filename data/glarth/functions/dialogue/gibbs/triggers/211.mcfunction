#211 Gibbs | Dialogue
tag @s add temp
execute as @e[tag=gibbs] at @s facing entity @p[tag=temp] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=mctsts] at @s facing entity @p[tag=temp] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=adri] at @s facing entity @p[tag=temp] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=suso] at @s facing entity @p[tag=temp] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute as @e[tag=jerozgen] at @s facing entity @p[tag=temp] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
tag @s remove temp

function glarth:dialogue/gibbs/triggers/210


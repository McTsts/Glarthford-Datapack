scoreboard players operation bob phanterraAnim = @e[tag=phanterra,type=#glarth:phanterra,limit=1,sort=nearest] phanterraAnim


execute if score bob phanterraAnim matches 01..02 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~0.0725 ~
execute if score bob phanterraAnim matches 03..07 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~0.055 ~
execute if score bob phanterraAnim matches 08 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~0.040 ~
execute if score bob phanterraAnim matches 09 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~0.025 ~
execute if score bob phanterraAnim matches 10 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~0.015 ~
execute if score bob phanterraAnim matches 11..20 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~-0.0454 ~

execute if score bob phanterraAnim matches 00 if entity @s[tag=phanBob] run tag @s add phanBob_isBobbing
execute if score bob phanterraAnim matches 00 if entity @s[tag=!phanBob] run tag @s remove phanBob_isBobbing
execute if score bob phanterraAnim matches 00 if entity @s[tag=phanBob_isBobbing] run tp @s ~ ~-0.0460 ~
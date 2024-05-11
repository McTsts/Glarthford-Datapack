execute if entity @s[tag=tbcPillagerBannerman] run scoreboard players set winDelay tbcStats 6
execute if entity @s[tag=tbcPillagerBannerman] run schedule function glarth:dialogue/bannerman_pillager/lines/lose 1t
execute if entity @s[tag=tbcVindicatorBannerman] run scoreboard players set winDelay tbcStats 6
execute if entity @s[tag=tbcVindicatorBannerman] run schedule function glarth:dialogue/bannerman_vindicator/lines/lose 1t
execute if entity @s[tag=tbcIllusionerBannerman] run scoreboard players set winDelay tbcStats 8
execute if entity @s[tag=tbcIllusionerBannerman] run schedule function glarth:dialogue/bannerman_illusioner/lines/lose 1t
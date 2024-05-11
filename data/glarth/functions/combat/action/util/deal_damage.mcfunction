## Damage
scoreboard players operation dealDamage Temp = damage tbcStats

# Correct Effect Values
scoreboard players operation blindness tbcStats > 0 Const
scoreboard players operation stun tbcStats > 0 Const
scoreboard players operation fire tbcStats > 0 Const
scoreboard players operation freeze tbcStats > 0 Const
scoreboard players operation bee tbcStats > 0 Const
scoreboard players operation poison tbcStats > 0 Const

## Frozen Damage
scoreboard players set freezeDmg Temp 0
execute if entity @s[scores={tbcFreeze=0..}] run scoreboard players operation freezeDmg Temp = damage tbcStats
execute if entity @s[scores={tbcFreeze=0..}] run scoreboard players operation freezeDmg Temp *= 25 Const
execute if entity @s[scores={tbcFreeze=0..}] run scoreboard players operation freezeDmg Temp /= 100 Const
execute if entity @s[scores={tbcFreeze=0..}] run scoreboard players operation dealDamage Temp += freezeDmg Temp

# Elemental Tip
execute if entity @s[tag=tbcImBee] if score bee tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49
execute if entity @s[tag=tbcImFreeze] if score freeze tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49
execute if entity @s[tag=tbcImBlindness] if score blindness tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49
execute if entity @s[tag=tbcImFire] if score fire tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49
execute if entity @s[tag=tbcImFire2] if score fire tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49
execute if entity @s[tag=tbcImStun] if score stun tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49
execute if entity @s[tag=tbcImPoison] if score poison tbcStats matches 1.. at @a[tag=tbcTurn,tag=!tip49] as @a[distance=..0.5] run function glarth:mechanic/tip/49

## Extra Damage
# Reset
scoreboard players set @s tbcExtraDmg 0
# Bee
scoreboard players operation @s[tag=!tbcImBee] tbcBee += bee tbcStats
scoreboard players operation @s[tag=tbcImBee] tbcExtraDmg -= bee tbcStats
scoreboard players operation @s[tag=tbcWeakBee] tbcExtraDmg += bee tbcStats
execute if score extraWeak tbcStats matches 1 if score bee tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakBee] tbcBee 1
# Blindness
scoreboard players operation @s[tag=!tbcImBlindness] tbcBlindness += blindness tbcStats
scoreboard players operation @s[tag=tbcImBlindness] tbcExtraDmg -= blindness tbcStats
scoreboard players operation @s[tag=tbcWeakBlindness] tbcExtraDmg += blindness tbcStats
execute if score extraWeak tbcStats matches 1 if score blindness tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakBlindness] tbcBlindness 1
# Freeze
execute if score freeze tbcStats matches 1.. run scoreboard players operation @s[tag=!tbcImFreeze] tbcFreeze > 0 Const
scoreboard players operation @s[tag=!tbcImFreeze] tbcFreeze += freeze tbcStats
scoreboard players operation @s[tag=tbcImFreeze] tbcExtraDmg -= freeze tbcStats
scoreboard players operation @s[tag=tbcWeakFreeze] tbcExtraDmg += freeze tbcStats
execute if score extraWeak tbcStats matches 1 if score freeze tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakFreeze] tbcFreeze 1
# Fire
scoreboard players operation @s[tag=!tbcImFire] tbcFire += fire tbcStats
scoreboard players operation @s[tag=tbcImFire] tbcExtraDmg -= fire tbcStats
scoreboard players operation @s[tag=tbcImFire2] tbcExtraDmg -= fire tbcStats
scoreboard players operation @s[tag=tbcWeakFire] tbcExtraDmg += fire tbcStats
scoreboard players operation @s[tag=tbcWeakFire2] tbcFire += fire tbcStats
execute if score extraWeak tbcStats matches 1 if score fire tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakFire] tbcFire 1
execute if score extraWeak tbcStats matches 1 if score fire tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakFire2] tbcFire 1
# Stun
scoreboard players operation @s[tag=!tbcImStun] tbcStun += stun tbcStats
scoreboard players operation @s[tag=tbcImStun] tbcExtraDmg -= stun tbcStats
scoreboard players operation @s[tag=tbcWeakStun] tbcExtraDmg += stun tbcStats
execute if score extraWeak tbcStats matches 1 if score stun tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakStun] tbcStun 1
# Poison
scoreboard players operation @s[tag=!tbcImPoison] tbcPoison += poison tbcStats
scoreboard players operation @s[tag=tbcImPoison] tbcExtraDmg -= poison tbcStats
scoreboard players operation @s[tag=tbcWeakPoison] tbcExtraDmg += poison tbcStats
execute if score extraWeak tbcStats matches 1 if score poison tbcStats matches 1.. run scoreboard players add @s[tag=tbcWeakPoison] tbcPoison 1
# Calc
scoreboard players operation @s tbcExtraDmg *= extraMulti tbcStats
scoreboard players operation dealDamage Temp += @s tbcExtraDmg

# Deal Damage
scoreboard players operation dealDamage Temp > 0 Const
scoreboard players operation @s tbcHealth -= dealDamage Temp

## No Health
scoreboard players set @s[tag=tbcNoHealth] tbcHealth 0

# Display Damage
#tellraw @a [{"selector":"@s"}," -> D: ",{"score":{"name":"damage","objective":"tbcStats"}}]
#tellraw @a [{"selector":"@s"}," -> fD: ",{"score":{"name":"freezeDmg","objective":"Temp"}}]
#tellraw @a [{"selector":"@s"}," -> ED: ",{"score":{"name":"@e[scores={tbcSel=1}] ","objective":"tbcExtraDmg"}}]
scoreboard players operation damage Temp = dealDamage Temp

# hard coded evil ts line
execute if entity @e[scores={tbcSel=1,tbcBar=..25},tag=tbcEvilTs] if entity @p[tag=tbcTurn] unless score didTsDialogue tbcStats matches 1 if score tbcVa tbcStats matches 0 run function glarth:dialogue/evil_ts/lines/tbc2
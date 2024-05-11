#Reset
	function glarth:mechanic/setup/reset
# Setup
	execute store result score taleStart Stats run time query gametime
	scoreboard players set tick Dis 4800
	scoreboard players set day Dis 1
	scoreboard players set gate Stats 0
	scoreboard players add id edgeI 1
	scoreboard players operation @a[gamemode=adventure] edgeI = id edgeI
	xp set @a 0 levels
	xp set @a 0 points
	scoreboard players set actual Dis 0
	scoreboard players set progress Dis 0
	scoreboard players operation lastQuest Stats = quest Stats
	effect give @a[gamemode=adventure] minecraft:blindness 1 0 true
	scoreboard players set wind Stats 0
	scoreboard players set storm Stats 0
	scoreboard players set playing Stats 1
	scoreboard players set @a tbcSpeed 8
	scoreboard players set @a dimension 0
	scoreboard players set tbc Random 1
	execute as @p[scores={tbcSeed=1..},gamemode=adventure] unless score @s tbcSeed matches 3374 run scoreboard players operation tbc Random = @s tbcSeed
	scoreboard players reset * tbcSeed
	time set 20000
	summon area_effect_cloud 7 1000 -196 {Radius:0.0f,Duration:2147483647,Tags:["events"],CustomName:'"Events"',CustomNameVisible:0}
	gamerule showDeathMessages true
	gamerule fireDamage true
	gamerule drowningDamage true
	gamerule fallDamage true
	tag @a[tag=!permaTip25] remove tip25
    # Dimension Sidebar ID (previously via 0fix, 1.19)
	scoreboard players reset * ID
    scoreboard players set $id ID 0
    execute as @a[gamemode=adventure] store result score @s ID run scoreboard players add $id ID 1
	# Blindness Transition
	effect give @a[gamemode=adventure] blindness 9 0 true
	effect give @a[gamemode=adventure] invisibility 9 0 true
	scoreboard players remove tick Dis 150
	scoreboard players remove actual Dis 150
#Player Id
	scoreboard players set id playerid 0
	scoreboard players reset * playerid
	execute as @a[gamemode=adventure] run function glarth:mechanic/playerid
# Ender Chest
	function glarth.echest:setup/place_echests
	data merge block 0 0 0 {Items:[]}
# Further Setup
function glarth:mechanic/setup/adjust_difficulty
function glarth:title/quest_fadein
function glarth:mechanic/setup/furnace
function glarth:mechanic/setup/iron_trapdoor_fix
execute if score quest Stats matches 0 run function glarth:mechanic/setup/setup_tutorial
execute unless score quest Stats matches 0 run function glarth:mechanic/setup/setup_quest
function glarth:mechanic/setup/realms
execute as @a run function glarth:team/join/player

# load arenas - this is new in 1.17 because Minecraft is a game engine that reasonably operates which means that in an attempt to increase performance, performance will be decreased. Thanks. Very useful. Great update.
forceload add 241 -159 534 28
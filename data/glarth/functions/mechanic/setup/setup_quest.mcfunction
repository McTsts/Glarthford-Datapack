# Characters
function glarth:mechanic/setup/spawn_characters

# World
function glarth:mechanic/setup/blocks
schedule function glarth:mechanic/setup/doors 100t
function glarth:mechanic/setup/containers
function glarth:mechanic/setup/decoration
function glarth:mechanic/setup/entities
execute unless score season winter matches 1 run function glarth:mechanic/setup/ship
function glarth:mechanic/setup/ascension

# Extra
function glarth:mechanic/sapling/spawn
function glarth:mechanic/sapling/spawn
function glarth:mechanic/sapling/spawn
function glarth:mechanic/sapling/spawn
function glarth:mechanic/sapling/spawn
scoreboard players set @a MusicSet 12
scoreboard players set tbcUnlocked Stats 3

# Last
function glarth:mechanic/setup/quest

function board:game_table

# Bakery Fix
setblock 17 28 -214 lantern[hanging=false]
schedule function glarth:mechanic/setup/delayed 150t
stopsound @a voice
execute if score quest Stats matches 0 run schedule function glarth:dialogue/bat/lines/lose 60t
execute if score quest Stats matches 1 run schedule function glarth:dialogue/roberto/lines/lose 60t
execute if score quest Stats matches 2 run schedule function glarth:dialogue/skeleton_king/lines/lose 60t
execute if score quest Stats matches 3 run schedule function glarth:dialogue/netheran/lines/lose 60t
execute if score quest Stats matches 4 run schedule function glarth:dialogue/ender_priest/lines/lose 60t
execute if score quest Stats matches 5 run schedule function glarth:dialogue/slime/lines/lose 60t
execute if score quest Stats matches 6 run schedule function glarth:dialogue/grimsbane/lines/lose 60t
execute if score quest Stats matches 7 run schedule function glarth:dialogue/necromancer/lines/lose 60t
execute if score quest Stats matches 8 unless entity @e[tag=uncle,tag=a] run schedule function glarth:dialogue/piglin1/lines/lose 60t
execute if score quest Stats matches 9 run schedule function glarth:dialogue/raid_leader/lines/lose 60t
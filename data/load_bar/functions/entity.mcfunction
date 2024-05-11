#summoning entity
execute at @p run summon minecraft:armor_stand ~ ~ ~ {UUID:[I;0,0,0,676962],CustomName:'{"text":""}',Team:"load_bar.main",Marker:1b,Invisible:1b}

#displaying bar based on number
function load_bar:bars/0to100

#coloring bar
execute if score color= load_bar.main matches 0..3 run function load_bar:color/0to3
execute if score color= load_bar.main matches 4..7 run function load_bar:color/4to7
execute if score color= load_bar.main matches 8..11 run function load_bar:color/8to11
execute if score color= load_bar.main matches 12..15 run function load_bar:color/12to15
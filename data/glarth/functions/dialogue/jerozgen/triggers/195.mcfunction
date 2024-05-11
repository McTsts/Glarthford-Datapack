#195 Jerozgen | Translate Short Stories
function glarth:dialogue/jerozgen/lines/trade2
clear @s minecraft:written_book[custom_data={book:"short_stories_inverted"}]
function glarth:mechanic/give/short_stories
tag @e[tag=jerozgen,type=armor_stand] add a
function glarth:mechanic/tip/56
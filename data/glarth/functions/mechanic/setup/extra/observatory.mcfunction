# Open Observatory
clone -58 19 -260 -60 18 -263 -64 29 -263 
# Characters
summon armor_stand -87 40 -227 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":54,"minecraft:unbreakable":{}}}],Tags:["char","time_traveller"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"time_traveller","color":"gray"}',CustomNameVisible:1}
summon armor_stand -86 49 -239 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":24,"minecraft:unbreakable":{}}}],Tags:["char","astronomer"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"astronomer","color":"white"}',CustomNameVisible:1}

fill -70 34 -263 -71 34 -263 cobblestone
fill -71 35 -263 -72 35 -263 cobblestone
setblock -72 34 -263 cobblestone_slab[type=top]
fill -72 32 -265 -72 33 -265 air

setblock -90 50 -242 candle[candles=3,lit=true]
setblock -82 50 -237 candle[candles=3,lit=true]
setblock -86 51 -235 candle[candles=1,lit=true]
setblock -85 44 -242 torch

setblock -88 42 -247 light[level=15]
setblock -82 42 -236 light[level=15]
setblock -92 42 -237 light[level=15]
setblock -93 44 -242 light[level=15]


# Eastergg
setblock -76 38 -253 air

# chair 
clone -84 37 -242 -84 37 -244 -83 41 -245
setblock -82 41 -246 minecraft:lectern[facing=south,has_book=true,powered=false]{Book:{Count:1b,id:"minecraft:written_book",tag:{HideFlags:32,author:"",book:"jerozgen",custom:"book",display:{Lore:['{"italic":false,"color":"gray","translate":"book.byAuthor","with":[{"translate":"book.jerozgen.author"}]}','{"italic":false,"color":"gray","translate":"book.generation.0"}'],Name:'{"translate":"book.jerozgen.title","italic":false}'},pages:['{"extra":[{"color":"reset","translate":"book.jerozgen.content"}],"text":""}'],resolved:1b,title:""}},Page:0}
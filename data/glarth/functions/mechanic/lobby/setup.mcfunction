entitydata @e[type=!Player,tag=!area_main] {DeathTime:19s,Health:0.0f}
kill @e[type=!Player,tag=!area_main]
summon minecraft:villager 118 20 -136 {Attributes:[{Name:generic.movementSpeed,Base:0},{Name:generic.attackDamage,Base:0},{Name:generic.knockbackResistance,Base:1000},{Name:generic.armor,Base:1000}],ActiveEffects:[{Id:11,Amplifier:120,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:120,Duration:999999,ShowParticles:0b}],NoAI:1,NoGravity:1,Silent:1b,Tags:["lobby","lobby_hit","previous"],Team:noc,Career:2,Inventory:[],Willing:0b,Offers:{Recipes:[]},Profession:0,CareerLevel:1,Riches:0,PersistenceRequired:1b}
summon minecraft:villager 118 20 -131 {Attributes:[{Name:generic.movementSpeed,Base:0},{Name:generic.attackDamage,Base:0},{Name:generic.knockbackResistance,Base:1000},{Name:generic.armor,Base:1000}],ActiveEffects:[{Id:11,Amplifier:120,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:120,Duration:999999,ShowParticles:0b}],NoAI:1,NoGravity:1,Silent:1b,Tags:["lobby","lobby_hit","next"],Team:noc,Career:2,Inventory:[],Willing:0b,Offers:{Recipes:[]},Profession:0,CareerLevel:1,Riches:0,PersistenceRequired:1b}
summon minecraft:villager 108.0 20 -120 {Attributes:[{Name:generic.movementSpeed,Base:0},{Name:generic.attackDamage,Base:0},{Name:generic.knockbackResistance,Base:1000},{Name:generic.armor,Base:1000}],ActiveEffects:[{Id:11,Amplifier:120,Duration:999999,ShowParticles:0b},{Id:14,Amplifier:120,Duration:999999,ShowParticles:0b}],NoAI:1,NoGravity:1,Silent:1b,Tags:["lobby","lobby_hit","credits"],Team:noc,Career:2,Inventory:[],Willing:0b,Offers:{Recipes:[]},Profession:0,CareerLevel:1,Riches:0,PersistenceRequired:1b}

summon area_effect_cloud 118 20 -136 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby"],CustomName:"§7§l§oPrevious",CustomNameVisible:1}
summon area_effect_cloud 118 20 -131 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby"],CustomName:"§7§l§oNext",CustomNameVisible:1}
summon area_effect_cloud 123.0 19 -133.0 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby"],CustomName:"§7§lStart",CustomNameVisible:1}
summon area_effect_cloud 118 19 -133.0 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","quest_name"],CustomName:"§7§l§n#1 The Kidnapping",CustomNameVisible:1}

scoreboard players set quest Stats 1
function mctsts:mechanic/lobby/change

summon minecraft:armor_stand 131.0 22 -133.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:90}],Rotation:[90f,0f],Invisible:1,Invulnerable:1,Tags:["lobby","mirage"],DisabledSlots:2039583}
summon minecraft:armor_stand 123.0 21.5 -125.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:80}],Rotation:[180f,0f],Invisible:1,Invulnerable:1,Tags:["lobby","teama","team"],DisabledSlots:2039583}
summon minecraft:armor_stand 123.0 21.5 -141.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:81}],Rotation:[0f,0f],Invisible:1,Invulnerable:1,Tags:["lobby","teamb","team"],DisabledSlots:2039583}

summon area_effect_cloud 127 23.0 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htpm"],CustomName:"§8§kT§r §7§n§lHow to play:§r §8§kS",CustomNameVisible:1}
summon area_effect_cloud 127 22.75 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp1"],CustomName:"§7In this map you",CustomNameVisible:1}
summon area_effect_cloud 127 22.5 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp2"],CustomName:"§7have §l20 §7minutes",CustomNameVisible:1}
summon area_effect_cloud 127 22.25 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp3"],CustomName:"§7to complete one of the",CustomNameVisible:1}
summon area_effect_cloud 127 22.0 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp4"],CustomName:"§7tasks! Your goal is",CustomNameVisible:1}
summon area_effect_cloud 127 21.75 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp5"],CustomName:"§7to figure out what you",CustomNameVisible:1}
summon area_effect_cloud 127 21.5 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp6"],CustomName:"§7need to do to achieve",CustomNameVisible:1}
summon area_effect_cloud 127 21.25 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp7"],CustomName:"§7this.",CustomNameVisible:1}
summon area_effect_cloud 127 21.0 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp8"],CustomName:"§7Right-click a character's",CustomNameVisible:1}
summon area_effect_cloud 127 20.75 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp9"],CustomName:"§7head with an §lempty hand",CustomNameVisible:1}
summon area_effect_cloud 127 20.5 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp10"],CustomName:"§7to interact with them.",CustomNameVisible:1}
summon area_effect_cloud 127 20.25 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp11"],CustomName:"§7Trading with characters",CustomNameVisible:1}
summon area_effect_cloud 127 20.0 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp12"],CustomName:"§7and stealing items is the",CustomNameVisible:1}
summon area_effect_cloud 127 19.75 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp13"],CustomName:"§7key to victory!",CustomNameVisible:1}
summon area_effect_cloud 127 19.5 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp14"],CustomName:"§7Remember that trades",CustomNameVisible:1}
summon area_effect_cloud 127 19.25 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp15"],CustomName:"§7and items change according",CustomNameVisible:1}
summon area_effect_cloud 127 19.0 -138 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","htp","htp16"],CustomName:"§7to the selected task though!",CustomNameVisible:1}

summon area_effect_cloud 127 23.0 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","om"],CustomName:"§8§kT§r §7§n§lTesters:§r §8§kS",CustomNameVisible:1}
summon area_effect_cloud 127 22.7 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o1"],CustomName:"§7Jbip  Ds43m",CustomNameVisible:1}
summon area_effect_cloud 127 22.5 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o2"],CustomName:"§7Kroppeb  GrayFG",CustomNameVisible:1}
summon area_effect_cloud 127 22.3 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o3"],CustomName:"§7Tomhelduf  Dox",CustomNameVisible:1}
summon area_effect_cloud 127 22.1 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o4"],CustomName:"§7xPsyclone  Alforofus",CustomNameVisible:1}
summon area_effect_cloud 127 21.9 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o5"],CustomName:"§7infinitydrago  Jachro",CustomNameVisible:1}
summon area_effect_cloud 127 21.7 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o6"],CustomName:"§7Vilder50  shuffler10",CustomNameVisible:1}
summon area_effect_cloud 127 21.5 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o7"],CustomName:"§7GuineaPvP  MaybeLaterx",CustomNameVisible:1}
summon area_effect_cloud 127 21.3 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o8"],CustomName:"§7DJCOOL2008  Wout1200",CustomNameVisible:1}
summon area_effect_cloud 127 21.1 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o9"],CustomName:"§7DarkPiep  IMKevin117",CustomNameVisible:1}
summon area_effect_cloud 127 20.9 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o10"],CustomName:"§7BigNinjaChicken  Krozi",CustomNameVisible:1}
summon area_effect_cloud 127 20.7 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o11"],CustomName:"§7Incarceron  mrKisiel23",CustomNameVisible:1}
summon area_effect_cloud 127 20.5 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o12"],CustomName:"§7Gnimacz  It5meSam",CustomNameVisible:1}
summon area_effect_cloud 127 20.3 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o13"],CustomName:"§7Aerh  spacegame202",CustomNameVisible:1}
summon area_effect_cloud 127 20.1 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o14"],CustomName:"§7UniqueImpact  Whnd",CustomNameVisible:1}
summon area_effect_cloud 127 19.9 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o15"],CustomName:"§7Geoloswith1993 Skyrrel",CustomNameVisible:1}
summon area_effect_cloud 127 19.7 -129 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","o","o16"],CustomName:"§7Chumbleweasel",CustomNameVisible:1}

summon area_effect_cloud 108.0 21 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","im"],CustomName:"§7§8§kT§r §7§n§lInformation:§r §8§kS",CustomNameVisible:1}
summon area_effect_cloud 108.0 20.75 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i1"],CustomName:"§7This map has custom music, made by our",CustomNameVisible:1}
summon area_effect_cloud 108.0 20.5 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i2"],CustomName:"§7Team Members, that means you can use",CustomNameVisible:1}
summon area_effect_cloud 108.0 20.25 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i3"],CustomName:"§7it in e.g. videos! It's controlled by the ",CustomNameVisible:1}
summon area_effect_cloud 108.0 20.0 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i4"],CustomName:"§7Jukebox/Noteblock slider! ",CustomNameVisible:1}
summon area_effect_cloud 108.0 19.75 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i5"],CustomName:"§7There is also lots of Voice Acting in this ",CustomNameVisible:1}
summon area_effect_cloud 108.0 19.5 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i6"],CustomName:"§7map. It is controlled with the Voices slider! ",CustomNameVisible:1}
summon area_effect_cloud 108.0 19.25 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i7"],CustomName:"§7This map is also available in a couple of",CustomNameVisible:1}
summon area_effect_cloud 108.0 19.0 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i7"],CustomName:"§7languages, just change your Minecraft",CustomNameVisible:1}
summon area_effect_cloud 108.0 18.75 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i7"],CustomName:"§7language to also change the map",CustomNameVisible:1}
summon area_effect_cloud 108.0 18.5 -146 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby","i","i7"],CustomName:"§7language!",CustomNameVisible:1}

summon minecraft:item_frame 105 19 -149 {Facing:0,Item:{id:"stone_slab",Count:1}}
summon minecraft:item_frame 110 19 -149 {Facing:0,Item:{id:"stone_slab",Count:1}}

summon area_effect_cloud 108.0 20 -120 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["lobby"],CustomName:"§7§lClick for Credits",CustomNameVisible:1}


function mctsts:mechanic/lobby/creator
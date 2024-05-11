setblock 17 28 -214 air
tp @e[type=wolf] -15 26 -210

clone -14 27 -192 -14 26 -192 7 26 -184

# Loader Chars
tag @e[tag=char] add asLoader
tag @e[tag=char] add asLoaderFar
tag @e[tag=char] add asLoaderKeep

# Loader Entities
tag @e[type=cow] add asLoader
tag @e[type=chicken] add asLoader
tag @e[type=cod] add asLoader
tag @e[type=squid] add asLoader
tag @e[type=fox] add asLoader
tag @e[type=tropical_fish] add asLoader
tag @e[type=rabbit] add asLoader
tag @e[type=wolf] add asLoader
tag @e[type=ocelot] add asLoader
tag @e[type=item_frame] add asLoader
tag @e[type=bat] add asLoader

# Loader Doors
tag @e[tag=door] add asLoader
execute positioned -1 25 -245 run tag @e[tag=door,distance=..5] add asLoaderFar

# Loader Pickup
tag @e[tag=pickup_name] add asLoader
tag @e[tag=pickupItem] add asLoader

# Loader Enchant Book 
tag @e[tag=et] add asLoader

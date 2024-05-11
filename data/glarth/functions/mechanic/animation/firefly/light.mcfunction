#execute if entity @a[distance=..30,gamemode=adventure] if block ~ ~ ~ air run setblock ~ ~ ~ lantern[hanging=false]
#execute if block ~ ~ ~ lantern[hanging=false] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace lantern[hanging=false]
#execute if entity @a[distance=..30,gamemode=adventure] if block ~ ~ ~ air run setblock ~ ~ ~ lantern[hanging=false]
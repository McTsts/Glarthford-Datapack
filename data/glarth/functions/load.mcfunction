tellraw @a {"text":"@] Ｒｅｌａｏｄｅｄ"}

# gamerules
gamerule announceAdvancements true
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory false
gamerule logAdminCommands false
gamerule maxCommandChainLength 2147483647
gamerule maxEntityCramming 24
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule reducedDebugInfo true

execute if entity @a[gamemode=creative] run gamerule reducedDebugInfo false
execute if entity @a[gamemode=creative] run gamerule sendCommandFeedback true
scoreboard players reset * tbcQueue
scoreboard players reset * tbcQueueX
tag @a remove inTBC
tag @a remove tbcAttackable
tag @a remove tbcTarget
tag @a remove tbcTurn
tag @a remove tbcWinReady
kill @e[tag=tbc]
scoreboard players reset * blocking
scoreboard players reset * blocked
scoreboard players reset * inBlock
scoreboard players reset * failedBlock
scoreboard players reset * tbcFire
scoreboard players reset * tbcPoison
scoreboard players reset * tbcStun
scoreboard players reset * tbcInfection
scoreboard players reset * tbcRegeneration
scoreboard players reset * tbcAbsorption
scoreboard players reset * tbcAbsorptionX
scoreboard players reset * tbcFreeze
scoreboard players reset * tbcBlindness
scoreboard players reset * tbcEfJump
scoreboard players reset * tbcEfSpeed
scoreboard players reset * tbcCompanionI
scoreboard players reset * tbcFireResis
scoreboard players reset * tbcCantMove
scoreboard players reset * tbcPumpkin
scoreboard players reset * tbcWither
scoreboard players reset * tbcSpeedX
scoreboard players reset * tbcSpeedXX
scoreboard players reset * tbcEfS2
scoreboard players reset * tbcEfJ2
scoreboard players set start tbcStats 0
gamerule showDeathMessages true

scoreboard players set dodge tbcStats 0
scoreboard players set damage tbcStats 0
scoreboard players set blindness tbcStats 0
scoreboard players set bee tbcStats 0
scoreboard players set freeze tbcStats 0
scoreboard players set fire tbcStats 0
scoreboard players set stun tbcStats 0
scoreboard players set poison tbcStats 0

scoreboard players set spawnCounter tbcStats 0
scoreboard players set curAngle tbcAdjLoc 0
scoreboard players set forceRot tbcStats 0
scoreboard players set doPhanterra tbcStats 0
scoreboard players set doLaser tbcStats 0
scoreboard players set doFireworks tbcStats 0

scoreboard players set winDelay tbcStats 5
scoreboard players set winReady tbcStats 0
schedule clear glarth:combat/celebrate

execute as @a run attribute @s minecraft:generic.max_health base set 20

schedule function glarth:combat/reset_delayed 20t



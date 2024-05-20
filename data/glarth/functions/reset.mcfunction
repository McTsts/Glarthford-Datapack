function glarth:mechanic/tip/reset

tag @a remove encB0
tag @a remove encB1
tag @a remove encB2
tag @a remove encB3
tag @a remove encB4
tag @a remove encB5
tag @a remove encB6
tag @a remove encB7
tag @a remove encB8
tag @a remove encB9
tag @a remove encB10
tag @a remove encB11
tag @a remove lostOnce
tag @a remove wonOnce
tag @a remove wonTwice
tag @a remove wonThrice
tag @a remove playedOnce
tag @a remove failedBlockOnce
tag @a remove throwableTutorial
tag @s remove seenGaryHideout
tag @s remove doneGarySapphire
scoreboard players reset * quest

scoreboard players reset @a winQ0
scoreboard players reset @a winQ1
scoreboard players reset @a winQ2
scoreboard players reset @a winQ3
scoreboard players reset @a winQ4
scoreboard players reset @a winQ5
scoreboard players reset @a winQ6
scoreboard players reset @a winQ7
scoreboard players reset @a winQ8
scoreboard players reset @a winQ9
scoreboard players reset @a winQ10
scoreboard players reset @a winQ11

scoreboard players reset @a unlockQ0
scoreboard players reset @a unlockQ1
scoreboard players reset @a unlockQ2
scoreboard players reset @a unlockQ3
scoreboard players reset @a unlockQ4
scoreboard players reset @a unlockQ5
scoreboard players reset @a unlockQ6
scoreboard players reset @a unlockQ7
scoreboard players reset @a unlockQ8
scoreboard players reset @a unlockQ9
scoreboard players reset @a unlockQ10
scoreboard players reset @a unlockQ11

scoreboard players set 0 quest 0
scoreboard players set 1 quest 0
scoreboard players set 2 quest 0
scoreboard players set 3 quest 0
scoreboard players set 4 quest 0
scoreboard players set 5 quest 0
scoreboard players set 6 quest 0
scoreboard players set 7 quest 0
scoreboard players set 8 quest 0
scoreboard players set 9 quest 0
scoreboard players set 10 quest 0
scoreboard players set 11 quest 0

scoreboard players set running winter 0

function board:move/jukebox

function glarth:mechanic/lobby/music_sel/reset
function glarth:mechanic/lobby/music_sel/lock


item replace entity @e[type=armor_stand,tag=lobbyScreen] armor.head with minecraft:diamond_hoe[damage=213]
scoreboard players set page pcRec 0

scoreboard players set combat Stats 0
scoreboard players set difficulty Stats 2
scoreboard players set lowGraphics Stats 0
scoreboard players set noClock Stats 0
function glarth:sign/combat/change
function glarth:sign/graphics/change
data merge block 160 24 -100 {front_text:{messages:['{"translate":"lobby.options.clock","italic":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/graphics/clock"}}','[{"text":"• ","bold":true,"color":"green"},{"translate":"lobby.options.enabled","color":"green","bold":true},{"text":" •","bold":true,"color":"green"}]','[{"translate":"lobby.options.disabled","color":"black"}]','""']}}
data merge block 160 24 -102 {front_text:{messages:['{"translate":"lobby.options.graphics","italic":true,"clickEvent":{"action":"run_command","value":"function glarth:sign/graphics/quality"}}','[{"text":"• ","bold":true,"color":"green"},{"translate":"lobby.options.graphics.default","color":"green","bold":true},{"text":" •","bold":true,"color":"green"}]','[{"translate":"lobby.options.graphics.low","color":"black"}]','""']}}
data merge block 164 24 -95 {front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"function glarth:sign/combat/type"}}','{"translate":"lobby.options.combat.type.pve","color":"black"}','[{"text":"• ","bold":true,"color":"blue"},{"translate":"lobby.options.combat.type.tbc","bold":true,"color":"blue"},{"text":" •","bold":true,"color":"blue"}]','""']}}
data merge block 161 24 -95 {front_text:{messages:['{"translate":"lobby.options.combat.difficulty.0","color":"black","clickEvent":{"action":"run_command","value":"function glarth:sign/combat/difficulty"}}','{"translate":"lobby.options.combat.difficulty.1","color":"black"}','[{"text":"• ","color":"yellow","bold":true},{"translate":"lobby.options.combat.difficulty.2","color":"yellow","bold":true},{"text":" •","color":"yellow","bold":true}]','{"translate":"lobby.options.combat.difficulty.3","color":"black"}']}}

scoreboard players set quest Stats 0
scoreboard players set bossRe Stats -1
schedule function glarth:mechanic/lobby/change 20
schedule function glarth:mechanic/lobby/boss/change 20

function glarth:mechanic/lobby/setup

#Spectator Block
execute @a[score_trigger_min=1,m=3] ~ ~ ~ tellraw @s ["",{"text":"You are a spectator!","color":"red"}]
scoreboard players set @a[score_trigger_min=1,m=3] trigger 0
#Start
execute @a[score_trigger_min=1] ~ ~ ~ stopsound @a[r=5] voice
execute @a[score_trigger_min=1] ~ ~ ~ function mctsts:mechanic/item 
#1 Lumberjack | Dialogue
execute @e[tag=lumberjack] ~ ~ ~ execute @a[score_trigger_min=1,score_trigger=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"lumberjack","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"lumberjack.1","color":"gray"}]
execute @e[tag=lumberjack] ~ ~ ~ execute @a[score_trigger_min=1,score_trigger=1] ~ ~ ~ playsound lumberjack3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=lumberjack] ~ ~ ~ execute @s[score_Success_min=1] ~ ~ ~ execute @a[score_trigger_min=1,score_trigger=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"lumberjack.a1.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 2"}},{"text":"] ","color":"green"}]
execute @e[tag=lumberjack] ~ ~ ~ execute @s[score_Success_min=1] ~ ~ ~ execute @a[score_trigger_min=1,score_trigger=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"lumberjack.a1.2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 3"}},{"text":"] ","color":"green"}]
#2 Lumberjack | Truth to Pickaxe
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=2,score_trigger=2] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"lumberjack","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"lumberjack.1.1","color":"gray"}]
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=2,score_trigger=2] ~ ~ ~ playsound lumberjack4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=2,score_trigger=2] stone_pickaxe 1 0 {display:{LocName:"item.pickaxe_lumberjack"},CanDestroy:["gravel"],HideFlags:55}
execute @a[score_trigger_min=2,score_trigger=2] ~ ~ ~ scoreboard players tag @e[tag=lumberjack] add a
#3 Lumberjack | Dialogue
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=3,score_trigger=3] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_red"},{"translate":"lumberjack","color":"gold"},{"text":"] ","color":"dark_red"},{"translate":"lumberjack.1.2","color":"gray","bold":true}]
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=3,score_trigger=3] ~ ~ ~ playsound lumberjack5 voice @a[r=5] ~ ~ ~ 100 1
execute @a[score_trigger_min=3,score_trigger=3] ~ ~ ~ scoreboard players tag @e[tag=lumberjack] add a
#4 Bum | Key to Holy Grail
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=4,score_trigger=4,score_iKey_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"bum","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"bum.1","color":"gray"}]
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=4,score_trigger=4,score_iKey_min=1] ~ ~ ~ playsound bum3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=4,score_trigger=4,score_iKey_min=1] minecraft:diamond_hoe 40 1
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=4,score_trigger=4,score_iKey_min=1] minecraft:diamond_hoe 1 41 {display:{LocName:"item.grail"},Unbreakable:1,HideFlags:63}
execute @a[score_trigger_min=4,score_trigger=4,score_iKey_min=1] ~ ~ ~ scoreboard players tag @e[tag=bum] add a
execute @a[score_trigger_min=4,score_trigger=4,score_iKey=0] ~ ~ ~ execute @e[tag=bum] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#5 Fisher | Beer to Fishing Rod
execute @e[tag=fisher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=5,score_trigger=5,score_iBeer_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"fisher","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"fisher.1.2","color":"gray"}]
execute @e[tag=fisher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=5,score_trigger=5,score_iBeer_min=1] ~ ~ ~ playsound fisher4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=fisher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=5,score_trigger=5,score_iBeer=0] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"fisher","color":"blue"},{"text":"] ","color":"dark_gray"},{"translate":"fisher.1.1","color":"gray"}]
execute @e[tag=fisher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=5,score_trigger=5,score_iBeer=0] ~ ~ ~ playsound fisher3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=fisher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=5,score_trigger=5,score_iBeer_min=1] potion 0 1 {display:{LocName:"item.beer"}}
execute @e[tag=fisher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=5,score_trigger=5,score_iBeer_min=1] minecraft:fishing_rod 1 7
execute @a[score_trigger_min=5,score_trigger=5,score_iBeer_min=1] ~ ~ ~ scoreboard players tag @e[tag=fisher] add a
#6 Priest | Holy Grail to Emerald
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=6,score_trigger=6,score_iGrail_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"priest","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"priest.1","color":"gray"}]
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=6,score_trigger=6,score_iGrail_min=1] ~ ~ ~ playsound priest3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=6,score_trigger=6,score_iGrail_min=1] minecraft:diamond_hoe 41 1
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=6,score_trigger=6,score_iGrail_min=1] emerald 1 0
execute @a[score_trigger_min=6,score_trigger=6,score_iGrail_min=1] ~ ~ ~ scoreboard players tag @e[tag=priest] add a
execute @a[score_trigger_min=6,score_trigger=6,score_iGrail=0] ~ ~ ~ execute @e[tag=priest] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#7 Richard | Diamond to Nothing
execute @e[tag=richard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=7,score_trigger=7,score_iDiamond_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"richard","color":"dark_aqua"},{"text":"] ","color":"dark_gray"},{"translate":"richard.1","color":"gray"}]
execute @e[tag=richard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=7,score_trigger=7,score_iDiamond_min=1] ~ ~ ~ playsound richard5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=richard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=7,score_trigger=7,score_iDiamond_min=1] diamond 0 1
execute @a[score_trigger_min=7,score_trigger=7,score_iDiamond_min=1] ~ ~ ~ scoreboard players tag @e[tag=richard] add a
execute @a[score_trigger_min=7,score_trigger=7,score_iDiamond=0] ~ ~ ~ execute @e[tag=richard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#8 Bum | Beer to Diamond Hoe
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=8,score_trigger=8,score_iBeer_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"bum","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"bum.1","color":"gray"}]
execute @a[score_trigger_min=8,score_trigger=8,score_iBeer_min=1] ~ ~ ~ execute @e[tag=bum] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ playsound bum4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=8,score_trigger=8,score_iBeer_min=1] potion 0 1 {display:{LocName:"item.beer"}}
execute @e[tag=bum] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=8,score_trigger=8,score_iBeer_min=1] diamond_hoe 1 0
execute @a[score_trigger_min=8,score_trigger=8,score_iBeer_min=1] ~ ~ ~ scoreboard players tag @e[tag=bum] add b
execute @a[score_trigger_min=8,score_trigger=8,score_iBeer=0] ~ ~ ~ execute @e[tag=bum] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#9 Miner | Freshly Baked Bread to Pickaxe
execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.1","color":"gray"}]
execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh_min=1] ~ ~ ~ playsound miner2 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh=0,score_iBread_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.1x","color":"gray"}]
execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh=0,score_iBread_min=1] ~ ~ ~ playsound miner6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh_min=1] bread 0 1 {display:{LocName:"item.bread_fresh"}}
execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh_min=1] stone_pickaxe 1 0 {display:{LocName:"item.pickaxe_miner"},CanDestroy:["gravel"]}
execute @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh_min=1] ~ ~ ~ scoreboard players tag @e[tag=miner] add a
execute @a[score_trigger_min=9,score_trigger=9,score_iBreadFresh=0,score_iBread=0] ~ ~ ~ execute @e[tag=miner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#10 Girl | Bread to Skeleton Skull
execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=10,score_trigger=10,score_iBread_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"girl","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"girl.1","color":"gray"}]
execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=10,score_trigger=10,score_iBread_min=1] ~ ~ ~ playsound girl3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=10,score_trigger=10,score_iBread=0,score_iBreadFresh_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"girl","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"girl.1x","color":"gray"}]
execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=10,score_trigger=10,score_iBread=0,score_iBreadFresh_min=1] ~ ~ ~ playsound girl4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=10,score_trigger=10,score_iBread_min=1] bread 0 1 {display:{LocName:"item.bread"}}
execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=10,score_trigger=10,score_iBread_min=1] skull 1 0
execute @a[score_trigger_min=10,score_trigger=10,score_iBread_min=1] ~ ~ ~ scoreboard players tag @e[tag=girl] add a
execute @a[score_trigger_min=10,score_trigger=10,score_iBread=0,score_iBreadFresh=0] ~ ~ ~ execute @e[tag=girl] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#11 Druid | Skeleton Skull to Fermented Spider Eye
execute @e[tag=druid] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=11,score_trigger=11,score_iSkull_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"druid","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"druid.1","color":"gray"}]
execute @e[tag=druid] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=11,score_trigger=11,score_iSkull_min=1] ~ ~ ~ playsound druid3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=druid] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=11,score_trigger=11,score_iSkull_min=1] skull 0 1 
execute @e[tag=druid] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=11,score_trigger=11,score_iSkull_min=1] fermented_spider_eye 1 0
execute @a[score_trigger_min=11,score_trigger=11,score_iSkull_min=1] ~ ~ ~ scoreboard players tag @e[tag=druid] add a
execute @a[score_trigger_min=11,score_trigger=11,score_iSkull=0] ~ ~ ~ execute @e[tag=druid] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#12 Witch | Fermented Spider Eye to Diamond Pickaxe
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=12,score_trigger=12,score_iFermented_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"witch","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"witch.1","color":"gray"}]
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=12,score_trigger=12,score_iFermented_min=1] ~ ~ ~ playsound witch3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=12,score_trigger=12,score_iFermented_min=1] fermented_spider_eye 0 1 
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=12,score_trigger=12,score_iFermented_min=1] diamond_pickaxe 1 0 {CanDestroy:["quartz_ore"],HideFlags:55}
execute @a[score_trigger_min=12,score_trigger=12,score_iFermented_min=1] ~ ~ ~ scoreboard players tag @e[tag=witch] add a
execute @a[score_trigger_min=12,score_trigger=12,score_iFermented=0] ~ ~ ~ execute @e[tag=witch] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#13 Miner | Hint
execute @e[tag=miner] ~ ~ ~ execute @a[score_trigger_min=13,score_trigger=13] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"miner","color":"dark_gray"},{"text":"] ","color":"dark_gray"},{"translate":"miner.2","color":"gray"}]
execute @e[tag=miner] ~ ~ ~ execute @a[score_trigger_min=13,score_trigger=13] ~ ~ ~ playsound miner1 voice @a[r=5] ~ ~ ~ 100 1
#14 Brewer | Blaze Powder to Fire Resistance Potion
execute @e[tag=brewer] ~ ~ ~ execute @a[score_trigger_min=14,score_trigger=14,score_iBPowder_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"brewer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"brewer.1","color":"gray"}]
execute @e[tag=brewer] ~ ~ ~ execute @a[score_trigger_min=14,score_trigger=14,score_iBPowder_min=1] ~ ~ ~ playsound brewer3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=brewer] ~ ~ ~ clear @a[score_trigger_min=14,score_trigger=14,score_iBPowder_min=1] blaze_powder 0 1 
execute @e[tag=brewer] ~ ~ ~ give @a[score_trigger_min=14,score_trigger=14,score_iBPowder_min=1] potion 1 0 {Potion:"fire_resistance"}
execute @a[score_trigger_min=14,score_trigger=14,score_iBPowder=0] ~ ~ ~ execute @e[tag=brewer] ~ ~ ~ function mctsts:dialogue/invalid
#15 Adventurer | Diamond to Ender Pearl
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=15,score_trigger=15,score_iDiamond_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"adventurer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"adventurer.1","color":"gray"}]
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=15,score_trigger=15,score_iDiamond_min=1] ~ ~ ~ playsound adventurer3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=15,score_trigger=15,score_iDiamond_min=1] diamond 0 1 
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=15,score_trigger=15,score_iDiamond_min=1] ender_pearl 1 0
execute @a[score_trigger_min=15,score_trigger=15,score_iDiamond_min=1] ~ ~ ~ scoreboard players tag @e[tag=adventurer] add a
execute @a[score_trigger_min=15,score_trigger=15,score_iDiamond=0] ~ ~ ~ execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#16 Archaeologist | Shovel to Bone Blocks
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=16,score_trigger=16,score_iShovel_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"archaeologist","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"archaeologist.1","color":"gray"}]
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=16,score_trigger=16,score_iShovel_min=1] ~ ~ ~ playsound archaeologist5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=16,score_trigger=16,score_iShovel_min=1] stone_shovel -1 1 
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=16,score_trigger=16,score_iShovel_min=1] bone_block 4 0 {CanPlaceOn:["command_block"],HideFlags:63,display:{Lore:["Can Place On:","Chiseled End Stone Brick"]}}
execute @a[score_trigger_min=16,score_trigger=16,score_iShovel_min=1] ~ ~ ~ scoreboard players tag @e[tag=archaeologist] add a
execute @a[score_trigger_min=16,score_trigger=16,score_iShovel=0] ~ ~ ~ execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#17 Merchant #1 | Apple to Gold
execute @e[tag=merchant1] ~ ~ ~ execute @a[score_trigger_min=17,score_trigger=17,score_iApple_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"merchant1","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"merchant1.1","color":"gray"}]
execute @e[tag=merchant1] ~ ~ ~ execute @a[score_trigger_min=17,score_trigger=17,score_iApple_min=1] ~ ~ ~ playsound merchantf3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=merchant1] ~ ~ ~ clear @a[score_trigger_min=17,score_trigger=17,score_iApple_min=1] apple 0 1 
execute @e[tag=merchant1] ~ ~ ~ give @a[score_trigger_min=17,score_trigger=17,score_iApple_min=1] gold_ingot 1 0
execute @a[score_trigger_min=17,score_trigger=17,score_iApple=0] ~ ~ ~ execute @e[tag=merchant1] ~ ~ ~ function mctsts:dialogue/invalid
#18 Enderman | End Crystal to Bucket
execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=18,score_trigger=18,score_iCrystal_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"enderman","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"enderman.1","color":"gray"}]
execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=18,score_trigger=18,score_iCrystal_min=1] ~ ~ ~ playsound minecraft:entity.endermen.scream hostile @a[r=5] ~ ~ ~ 1 1
execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=18,score_trigger=18,score_iCrystal_min=1] end_crystal 0 1 
execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=18,score_trigger=18,score_iCrystal_min=1] bucket 1 0
execute @a[score_trigger_min=18,score_trigger=18,score_iCrystal_min=1] ~ ~ ~ scoreboard players tag @e[tag=enderman] add a
execute @a[score_trigger_min=18,score_trigger=18,score_iCrystal=0] ~ ~ ~ execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#19 Druid | Redstone to String
execute @e[tag=druid] ~ ~ ~ execute @a[score_trigger_min=19,score_trigger=19,score_iRedstone_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"druid","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"druid.2","color":"gray"}]
execute @e[tag=druid] ~ ~ ~ execute @a[score_trigger_min=19,score_trigger=19,score_iRedstone_min=1] ~ ~ ~ playsound druid4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=druid] ~ ~ ~ clear @a[score_trigger_min=19,score_trigger=19,score_iRedstone_min=1] redstone 0 1 
execute @e[tag=druid] ~ ~ ~ give @a[score_trigger_min=19,score_trigger=19,score_iRedstone_min=1] string 1 0
execute @a[score_trigger_min=19,score_trigger=19,score_iRedstone=0] ~ ~ ~ execute @e[tag=druid] ~ ~ ~ function mctsts:dialogue/invalid
#20 Sailor | String to Bucket
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=20,score_trigger=20,score_iString_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"sailor","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"sailor.1","color":"gray"}]
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=20,score_trigger=20,score_iString_min=1] ~ ~ ~ playsound sailor3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=20,score_trigger=20,score_iString_min=1] string 0 1 
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=20,score_trigger=20,score_iString_min=1] bucket 1 0
execute @a[score_trigger_min=20,score_trigger=20,score_iString_min=1] ~ ~ ~ scoreboard players tag @e[tag=sailor] add a
execute @a[score_trigger_min=20,score_trigger=20,score_iString=0] ~ ~ ~ execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#21 Blacksmith | 5 Gold to Chain Helmet
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=21,score_trigger=21,score_iGold_min=5] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.1","color":"gray"}]
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=21,score_trigger=21,score_iGold_min=5] ~ ~ ~ playsound blacksmith6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=21,score_trigger=21,score_iGold_min=5] gold_ingot 0 5
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=21,score_trigger=21,score_iGold_min=5] chainmail_helmet 1 0
execute @a[score_trigger_min=21,score_trigger=21,score_iGold_min=5] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add a
execute @a[score_trigger_min=21,score_trigger=21,score_iGold=4] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#22 Merchant #2 | Leather to Iron
execute @e[tag=merchant2] ~ ~ ~ execute @a[score_trigger_min=22,score_trigger=22,score_iLeather_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"merchant2","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"merchant2.1","color":"gray"}]
execute @e[tag=merchant2] ~ ~ ~ execute @a[score_trigger_min=22,score_trigger=22,score_iLeather_min=1] ~ ~ ~ playsound merchantm3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=merchant2] ~ ~ ~ clear @a[score_trigger_min=22,score_trigger=22,score_iLeather_min=1] leather 0 1 
execute @e[tag=merchant2] ~ ~ ~ give @a[score_trigger_min=22,score_trigger=22,score_iLeather_min=1] iron_ingot 1 0
execute @a[score_trigger_min=22,score_trigger=22,score_iLeather=0] ~ ~ ~ execute @e[tag=merchant2] ~ ~ ~ function mctsts:dialogue/invalid
#23 Witch | Cauldron to Potion of Healing
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"witch","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"witch.2","color":"gray"}]
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] ~ ~ ~ playsound witch4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] cauldron 0 1
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] potion 1 0 {Potion:"strong_healing"}
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] potion 1 0 {Potion:"strong_healing"}
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] potion 1 0 {Potion:"strong_healing"}
execute @a[score_trigger_min=23,score_trigger=23,score_iCauldron_min=1] ~ ~ ~ scoreboard players tag @e[tag=witch] add b
execute @a[score_trigger_min=23,score_trigger=23,score_iCauldron=0] ~ ~ ~ execute @e[tag=witch] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#24 Cave Man | Beef to Flint
execute @e[tag=cave_man] ~ ~ ~ execute @a[score_trigger_min=24,score_trigger=24,score_iBeef_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"cave_man","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"cave_man.1","color":"gray"}]
execute @e[tag=cave_man] ~ ~ ~ execute @a[score_trigger_min=24,score_trigger=24,score_iBeef_min=1] ~ ~ ~ playsound caveman3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=cave_man] ~ ~ ~ clear @a[score_trigger_min=24,score_trigger=24,score_iBeef_min=1] beef 0 1 
execute @e[tag=cave_man] ~ ~ ~ give @a[score_trigger_min=24,score_trigger=24,score_iBeef_min=1] flint 1 0
execute @a[score_trigger_min=24,score_trigger=24,score_iBeef=0] ~ ~ ~ execute @e[tag=cave_man] ~ ~ ~ function mctsts:dialogue/invalid
#25 Lumberjack | Water to Shovel
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=25,score_trigger=25,score_iWater_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"lumberjack","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"lumberjack.2","color":"gray"}]
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=25,score_trigger=25,score_iWater_min=1] ~ ~ ~ playsound lumberjack6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=25,score_trigger=25,score_iWater_min=1] potion 0 1 {Potion:"minecraft:water"}
execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=25,score_trigger=25,score_iWater_min=1] stone_shovel 1 0 {display:{LocName:"item.shovel_lumberjack"},CanDestroy:["soul_sand"],HideFlags:55}
execute @a[score_trigger_min=25,score_trigger=25,score_iWater_min=1] ~ ~ ~ scoreboard players tag @e[tag=lumberjack] add b
execute @a[score_trigger_min=25,score_trigger=25,score_iWater=0] ~ ~ ~ execute @e[tag=lumberjack] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#26 Soldier | Iron Sword to Shield
execute @e[tag=soldier] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=26,score_trigger=26,score_iISword_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"soldier","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"soldier.1","color":"gray"}]
execute @e[tag=soldier] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=26,score_trigger=26,score_iISword_min=1] ~ ~ ~ playsound soldier3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=soldier] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=26,score_trigger=26,score_iISword_min=1] iron_sword -1 1 
execute @r[tag=soldier,type=!Player] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=26,score_trigger=26,score_iISword_min=1] shield 1 0
execute @a[score_trigger_min=26,score_trigger=26,score_iISword_min=1] ~ ~ ~ scoreboard players tag @e[tag=soldier] add a
execute @a[score_trigger_min=26,score_trigger=26,score_iISword=0] ~ ~ ~ execute @e[tag=soldier] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#27 Explorer | Torch to Iron Boots
execute @e[tag=explorer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=27,score_trigger=27,score_iTorch_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"explorer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"explorer.1","color":"gray"}]
execute @e[tag=explorer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=27,score_trigger=27,score_iTorch_min=1] ~ ~ ~ playsound explorer2 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=explorer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=27,score_trigger=27,score_iTorch_min=1] torch 0 1 
execute @e[tag=explorer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=27,score_trigger=27,score_iTorch_min=1] iron_boots 1 0
execute @a[score_trigger_min=27,score_trigger=27,score_iTorch_min=1] ~ ~ ~ scoreboard players tag @e[tag=explorer] add a
execute @a[score_trigger_min=27,score_trigger=27,score_iTorch=0] ~ ~ ~ execute @e[tag=explorer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#28 Diver | Redstone to Iron Helmet
execute @e[tag=diver] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=28,score_trigger=28,score_iRedstone_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"diver","color":"aqua"},{"text":"] ","color":"dark_gray"},{"translate":"diver.1","color":"gray"}]
execute @e[tag=diver] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=28,score_trigger=28,score_iRedstone_min=1] ~ ~ ~ playsound diver3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=diver] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=28,score_trigger=28,score_iRedstone_min=1] redstone 0 1 
execute @e[tag=diver] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=28,score_trigger=28,score_iRedstone_min=1] iron_helmet 1 0
execute @a[score_trigger_min=28,score_trigger=28,score_iRedstone_min=1] ~ ~ ~ scoreboard players tag @e[tag=diver] add a
execute @a[score_trigger_min=28,score_trigger=28,score_iRedstone=0] ~ ~ ~ execute @e[tag=diver] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#29 Cave Man | Fish to Iron Sword
execute @e[tag=cave_man] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=29,score_trigger=29,score_iFish_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"cave_man","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"cave_man.2","color":"gray"}]
execute @e[tag=cave_man] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=29,score_trigger=29,score_iFish_min=1] ~ ~ ~ playsound caveman4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=cave_man] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=29,score_trigger=29,score_iFish_min=1] fish -1 1 
execute @e[tag=cave_man] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=29,score_trigger=29,score_iFish_min=1] iron_sword 1 0
execute @a[score_trigger_min=29,score_trigger=29,score_iFish_min=1] ~ ~ ~ scoreboard players tag @e[tag=cave_man] add a
execute @a[score_trigger_min=29,score_trigger=29,score_iFish=0] ~ ~ ~ execute @e[tag=cave_man] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#30 Merchant #1 | Dialogue
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=30,score_trigger=30] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"merchant1","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"merchant1.2","color":"gray"}]
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=30,score_trigger=30] ~ ~ ~ playsound merchantf4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=30,score_trigger=30] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 31"}},{"text":"] ","color":"green"}]
execute @a[score_trigger_min=30,score_trigger=30] ~ ~ ~ scoreboard players tag @e[tag=merchant1] add b
#31 Merchant #1 | Dialogue
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=31,score_trigger=31] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"merchant1","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"merchant1.2.1","color":"gray"}]
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=31,score_trigger=31] ~ ~ ~ playsound merchantf5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=31,score_trigger=31] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2.2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 32"}},{"text":"] ","color":"green"}]
execute @a[score_trigger_min=31,score_trigger=31] ~ ~ ~ scoreboard players tag @e[tag=merchant1] add c
#32 Merchant #1 | Diamond Shovel & 2 Gold to Diamond Sword
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=32,score_trigger=32,score_iDShovel_min=1,score_iGold_min=2] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"merchant1","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"merchant1.2.2","color":"gray"}]
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=32,score_trigger=32,score_iDShovel_min=1,score_iGold_min=2] ~ ~ ~ playsound merchantf6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ clear @a[score_trigger_min=32,score_trigger=32,score_iDShovel_min=1,score_iGold_min=2] diamond_shovel -1 1 
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ clear @a[score_trigger_min=32,score_trigger=32,score_iDShovel_min=1,score_iGold_min=2] gold_ingot 0 2 
execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ give @a[score_trigger_min=32,score_trigger=32,score_iDShovel_min=1,score_iGold_min=2] diamond_sword 1 0
execute @a[score_trigger_min=32,score_trigger=32,score_iDShovel_min=1,score_iGold_min=2] ~ ~ ~ scoreboard players tag @e[tag=merchant1] add d
execute @a[score_trigger_min=32,score_trigger=32,score_iDShovel=0,score_iGold_min=2] ~ ~ ~ execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=32,score_trigger=32,score_iGold=1,score_iDShovel_min=1] ~ ~ ~ execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=32,score_trigger=32,score_iGold=1,score_iDShovel=0] ~ ~ ~ execute @e[tag=merchant1] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ function mctsts:dialogue/invalid
#33 Evoker | Dialogue
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=33,score_trigger=33] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"evoker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"evoker.1","color":"gray"}]
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=33,score_trigger=33] ~ ~ ~ playsound evoker3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=33,score_trigger=33] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"evoker.a1.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 34"}},{"text":"] ","color":"green"}]
execute @a[score_trigger_min=33,score_trigger=33] ~ ~ ~ scoreboard players tag @e[tag=evoker] add a
#34 Evoker | Gold Block to Totem
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=34,score_trigger=34,score_iGBlock_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"evoker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"evoker.1.1","color":"gray"}]
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=34,score_trigger=34,score_iGBlock_min=1] ~ ~ ~ playsound evoker4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=34,score_trigger=34,score_iGBlock_min=1] gold_block 0 1 
execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=34,score_trigger=34,score_iGBlock_min=1] totem_of_undying 1 0
execute @a[score_trigger_min=34,score_trigger=34,score_iGBlock_min=1] ~ ~ ~ scoreboard players tag @e[tag=evoker] add b
execute @a[score_trigger_min=34,score_trigger=34,score_iGBlock=0] ~ ~ ~ execute @e[tag=evoker] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#35 Mourner | Totem to Iron Chestplate
execute @e[tag=mourner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=35,score_trigger=35,score_iTotem_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"mourner","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"mourner.1","color":"gray"}]
execute @e[tag=mourner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=35,score_trigger=35,score_iTotem_min=1] ~ ~ ~ playsound mourner3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=mourner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=35,score_trigger=35,score_iTotem_min=1] totem_of_undying 0 1 
execute @e[tag=mourner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=35,score_trigger=35,score_iTotem_min=1] iron_chestplate 1 0
execute @a[score_trigger_min=35,score_trigger=35,score_iTotem_min=1] ~ ~ ~ scoreboard players tag @e[tag=mourner] add a
execute @a[score_trigger_min=35,score_trigger=35,score_iTotem=0] ~ ~ ~ execute @e[tag=mourner] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#36 Sailor | Fishing Rod to Iron Leggings
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=36,score_trigger=36,score_iFRod_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"sailor","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"sailor.2","color":"gray"}]
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=36,score_trigger=36,score_iFRod_min=1] ~ ~ ~ playsound sailor4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=36,score_trigger=36,score_iFRod_min=1] fishing_rod -1 1 
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=36,score_trigger=36,score_iFRod_min=1] iron_leggings 1 0
execute @a[score_trigger_min=36,score_trigger=36,score_iFRod_min=1] ~ ~ ~ scoreboard players tag @e[tag=sailor] add b
execute @a[score_trigger_min=36,score_trigger=36,score_iFRod=0] ~ ~ ~ execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#37 Priest | Dialogue
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=37,score_trigger=37,score_iRing_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"priest","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"priest.2","color":"gray"}]
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=37,score_trigger=37,score_iRing_min=1] ~ ~ ~ playsound priest4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=37,score_trigger=37,score_iRing_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"priest.a2.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 38"}},{"text":"] ","color":"green"}]
execute @a[score_trigger_min=37,score_trigger=37,score_iRing_min=1] ~ ~ ~ scoreboard players tag @e[tag=priest] add b
execute @a[score_trigger_min=37,score_trigger=37,score_iRing=0] ~ ~ ~ execute @e[tag=priest] ~ ~ ~ function mctsts:dialogue/invalid
#38 Priest | Ring to Holy Sword
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=38,score_trigger=38,score_iRing_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"priest","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"priest.2.1","color":"gray"}]
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=38,score_trigger=38,score_iRing_min=1] ~ ~ ~ playsound priest5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=38,score_trigger=38,score_iRing_min=1] diamond_hoe 42 1
execute @e[tag=priest] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ give @a[score_trigger_min=38,score_trigger=38,score_iRing_min=1] golden_sword 1 0 {display:{LocName:"item.holy_sword"},ench:[{id:19,lvl:1},{id:16,lvl:2},{id:20,lvl:1}]}
execute @a[score_trigger_min=38,score_trigger=38,score_iRing_min=1] ~ ~ ~ scoreboard players tag @e[tag=priest] add c
execute @a[score_trigger_min=38,score_trigger=38,score_iRing=0] ~ ~ ~ execute @e[tag=priest] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
#39 Grave Digger | Rose to Shovel
execute @e[tag=digger] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=39,score_trigger=39,score_iRose_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"digger","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"digger.1","color":"gray"}]
execute @e[tag=digger] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=39,score_trigger=39,score_iRose_min=1] ~ ~ ~ playsound digger3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=digger] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=39,score_trigger=39,score_iRose_min=1] red_flower 0 1 
execute @e[tag=digger] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=39,score_trigger=39,score_iRose_min=1] stone_shovel 1 0 {display:{LocName:"item.shovel_digger"},CanDestroy:["soul_sand"],HideFlags:55}
execute @a[score_trigger_min=39,score_trigger=39,score_iRose_min=1] ~ ~ ~ scoreboard players tag @e[tag=digger] add a
execute @a[score_trigger_min=39,score_trigger=39,score_iRose=0] ~ ~ ~ execute @e[tag=digger] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#40 Baker | Gold to Cookie
execute @e[tag=baker] ~ ~ ~ execute @a[score_trigger_min=40,score_trigger=40,score_iGold_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"baker","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"baker.1","color":"gray"}]
execute @e[tag=baker] ~ ~ ~ execute @a[score_trigger_min=40,score_trigger=40,score_iGold_min=1] ~ ~ ~ playsound baker4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=baker] ~ ~ ~ clear @a[score_trigger_min=40,score_trigger=40,score_iGold_min=1] gold_ingot 0 1 
execute @e[tag=baker] ~ ~ ~ give @a[score_trigger_min=40,score_trigger=40,score_iGold_min=1] cookie 1 0 
execute @a[score_trigger_min=40,score_trigger=40,score_iGold=0] ~ ~ ~ execute @e[tag=baker] ~ ~ ~ function mctsts:dialogue/invalid
#41 Blacksmith | Iron to Door
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=41,score_trigger=41,score_iIron_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.2","color":"gray"}]
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=41,score_trigger=41,score_iIron_min=1] ~ ~ ~ playsound blacksmith7 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=41,score_trigger=41,score_iIron_min=1] iron_ingot 0 1 
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=41,score_trigger=41,score_iIron_min=1] ~ ~ ~ setblock 28 25 -207 minecraft:redstone_torch
execute @a[score_trigger_min=41,score_trigger=41,score_iIron_min=1] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add b
execute @a[score_trigger_min=41,score_trigger=41,score_iIron=0] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#42/43 Blacksmith | Emerald/Diamond to Mine
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=42,score_trigger=42,score_iDiamond_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.3","color":"gray"}]
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=42,score_trigger=42,score_iDiamond_min=1] ~ ~ ~ playsound blacksmith8 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=43,score_trigger=43,score_iEmerald_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.3","color":"gray"}]
execute @a[score_trigger_min=42,score_trigger=42,score_iDiamond_min=1] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ scoreboard players tag @s[tag=!c] add mine_wall
execute @a[score_trigger_min=43,score_trigger=43,score_iEmerald_min=1] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ scoreboard players tag @s[tag=!c] add mine_wall
execute @a[score_trigger_min=42,score_trigger=42,score_iDiamond_min=1] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add c
execute @a[score_trigger_min=43,score_trigger=43,score_iEmerald_min=1] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add c
execute @a[score_trigger_min=42,score_trigger=42,score_iDiamond=0] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=43,score_trigger=43,score_iEmerald=0] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
#44 Archaeologist | Diamond Pickaxe to Seal
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=44,score_trigger=44,score_iDPickaxe_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"archaeologist","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"archaeologist.2","color":"gray"}]
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=44,score_trigger=44,score_iDPickaxe_min=1] ~ ~ ~ playsound archaeologist6 voice @a[r=5] ~ ~ ~ 100 1
execute @a[score_trigger_min=44,score_trigger=44,score_iDPickaxe_min=1] ~ ~ ~ execute @e[tag=archaeologist] ~ ~ ~ scoreboard players tag @s[tag=!b] add cave_wall
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ clear @a[score_trigger_min=44,score_trigger=44,score_iDPickaxe_min=1] diamond_pickaxe -1 1 
execute @a[score_trigger_min=44,score_trigger=44,score_iDPickaxe_min=1] ~ ~ ~ scoreboard players tag @e[tag=archaeologist] add b
execute @a[score_trigger_min=44,score_trigger=44,score_iDPickaxe=0] ~ ~ ~ execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#45 Archaeologist | Ruby to Cave
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=45,score_trigger=45,score_iRuby_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"archaeologist","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"archaeologist.3","color":"gray"}]
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=45,score_trigger=45,score_iRuby_min=1] ~ ~ ~ playsound archaeologist7 voice @a[r=5] ~ ~ ~ 100 1
execute @a[score_trigger_min=45,score_trigger=45,score_iRuby_min=1] ~ ~ ~ execute @e[tag=archaeologist] ~ ~ ~ scoreboard players tag @s[tag=!c] add open_seal
execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=45,score_trigger=45,score_iRuby_min=1] diamond_hoe 43 1 
execute @a[score_trigger_min=45,score_trigger=45,score_iRuby_min=1] ~ ~ ~ scoreboard players tag @e[tag=archaeologist] add c
execute @a[score_trigger_min=45,score_trigger=45,score_iRuby=0] ~ ~ ~ execute @e[tag=archaeologist] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
#46 Enderman | Kill using Iron Sword
execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"enderman","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"enderman.2","color":"gray"}]
execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ playsound minecraft:entity.endermen.death hostile @a[r=5] ~ ~ ~ 1 1
execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ execute @e[tag=enderman] ~ ~ ~ particle portal ~ ~ ~ 0.4 0.4 0.4 0.01 1000
execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ execute @e[tag=enderman] ~ ~ ~ particle portal ~ ~ ~ 0.4 0.4 0.4 1 10
execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ execute @e[tag=enderman] ~ ~ ~ playsound minecraft:entity.endermen.death master @a ~ ~ ~ 100 1
execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ execute @e[tag=enderman] ~ ~1 ~ summon minecraft:item ~ ~ ~ {Item:{id:"ender_pearl",Count:1}}
execute @a[score_trigger_min=46,score_trigger=46,score_iISword_min=1] ~ ~ ~ kill @e[tag=enderman]
execute @a[score_trigger_min=46,score_trigger=46,score_iISword=0] ~ ~ ~ execute @e[tag=enderman] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ function mctsts:dialogue/invalid
#47 Blacksmith | Dialogue
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=47,score_trigger=47] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.4","color":"gray"}]
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=47,score_trigger=47] ~ ~ ~ playsound blacksmith9 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ tellraw @a[r=5,score_trigger_min=47,score_trigger=47] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a4.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 48"}},{"text":"] ","color":"green"}]
execute @a[score_trigger_min=47,score_trigger=47] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add d
#48 Blacksmith | Blaze Powder & 2 Coal to Blaze Coin
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ execute @a[score_trigger_min=48,score_trigger=48,score_iCoal_min=2,score_iBPowder_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.4.1","color":"gray"}]
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ execute @a[score_trigger_min=48,score_trigger=48,score_iCoal_min=2,score_iBPowder_min=1] ~ ~ ~ playsound blacksmith10 voice @a[r=5] ~ ~ ~ 100 1
execute @a[score_trigger_min=48,score_trigger=48,score_iCoal_min=2,score_iBPowder_min=1] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ scoreboard players tag @s[tag=!e] add blaze_coin
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ clear @a[score_trigger_min=48,score_trigger=48,score_iCoal_min=2,score_iBPowder_min=1] coal 0 2
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ clear @a[score_trigger_min=48,score_trigger=48,score_iCoal_min=2,score_iBPowder_min=1] blaze_powder 0 1
execute @a[score_trigger_min=48,score_trigger=48,score_iCoal_min=2,score_iBPowder_min=1] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add e
execute @a[score_trigger_min=48,score_trigger=48,score_iCoal=1,score_iBPowder_min=1] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=48,score_trigger=48,score_iBPowder=0,score_iCoal_min=2] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=48,score_trigger=48,score_iBPowder=0,score_iCoal=1] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!e] ~ ~ ~ function mctsts:dialogue/invalid
#49 Blacksmith | Take Blaze Coin
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ execute @a[score_trigger_min=49,score_trigger=49] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"blacksmith","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"blacksmith.5","color":"gray"}]
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ execute @a[score_trigger_min=49,score_trigger=49] ~ ~ ~ playsound blacksmith2 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ give @a[score_trigger_min=49,score_trigger=49] minecraft:diamond_hoe 1 44 {display:{LocName:"item.blaze_coin"},Unbreakable:1,HideFlags:63}
execute @a[score_trigger_min=49,score_trigger=49] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ kill @e[tag=b_bc]
execute @a[score_trigger_min=49,score_trigger=49] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ playsound minecraft:entity.shulker.open master @a ~ ~ ~ 100 0
execute @a[score_trigger_min=49,score_trigger=49] ~ ~ ~ execute @e[tag=blacksmith] ~ ~ ~ execute @s[tag=!g] ~ ~ ~ playsound minecraft:entity.shulker.open master @a ~ ~ ~ 100 1
execute @a[score_trigger_min=49,score_trigger=49] ~ ~ ~ scoreboard players tag @e[tag=blacksmith] add g
#50 Graveyard Guard | Letter Distraction
execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=50,score_trigger=50,score_iLetter_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"graveyard","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"graveyard.1","color":"gray"}] 
execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=50,score_trigger=50,score_iLetter_min=1] ~ ~ ~ playsound graveyard3 voice @a[r=5] ~ ~ ~ 100 1 
execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=50,score_trigger=50,score_iLetter_min=1] paper 0 1 {display:{LocName:"item.letter"}} 
execute @a[score_trigger_min=50,score_trigger=50,score_iLetter_min=1] ~ ~ ~ execute @e[tag=graveyard] ~ ~ ~ scoreboard players tag @s[tag=!a] add walk_away
execute @a[score_trigger_min=50,score_trigger=50,score_iLetter_min=1] ~ ~ ~ scoreboard players tag @e[tag=graveyard] add a
execute @a[score_trigger_min=50,score_trigger=50,score_iLetter=0] ~ ~ ~ execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#51 Farmer | Diamond Hoe to Door
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=51,score_trigger=51,score_iDHoe_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"farmer","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"farmer.1","color":"gray"}] 
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=51,score_trigger=51,score_iDHoe_min=1] ~ ~ ~ playsound farmer3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=51,score_trigger=51,score_iDHoe_min=1] diamond_hoe 0 1
execute @a[score_trigger_min=51,score_trigger=51,score_iDHoe_min=1] ~ ~ ~ execute @e[tag=farmer] ~ ~ ~ setblock 5 24 -267 redstone_torch
execute @a[score_trigger_min=51,score_trigger=51,score_iDHoe_min=1] ~ ~ ~ scoreboard players tag @e[tag=farmer] add a
execute @a[score_trigger_min=51,score_trigger=51,score_iDHoe=0] ~ ~ ~ execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#52 Butcher | Rabbit Hide to Door
execute @e[tag=butcher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=52,score_trigger=52,score_iHide_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"butcher","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"butcher.1","color":"gray"}] 
execute @e[tag=butcher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=52,score_trigger=52,score_iHide_min=1] ~ ~ ~ playsound butcher3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=butcher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=52,score_trigger=52,score_iHide_min=1] rabbit_hide 0 1
execute @a[score_trigger_min=52,score_trigger=52,score_iHide_min=1] ~ ~ ~ execute @e[tag=butcher] ~ ~ ~ setblock -9 24 -213 minecraft:redstone_torch
execute @a[score_trigger_min=52,score_trigger=52,score_iHide_min=1] ~ ~ ~ scoreboard players tag @e[tag=butcher] add a
execute @a[score_trigger_min=52,score_trigger=52,score_iHide=0] ~ ~ ~ execute @e[tag=butcher] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#53 Worker | Cookies to Door
execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=53,score_trigger=53,score_iCookie_min=10] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"worker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"worker.1","color":"gray"}] 
execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=53,score_trigger=53,score_iCookie_min=10] ~ ~ ~ playsound worker3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=53,score_trigger=53,score_iCookie_min=10] cookie 0 10
execute @a[score_trigger_min=53,score_trigger=53,score_iCookie_min=10] ~ ~ ~ execute @e[tag=worker] ~ ~ ~ setblock -46 25 -194 minecraft:redstone_torch
execute @a[score_trigger_min=53,score_trigger=53,score_iCookie_min=10] ~ ~ ~ scoreboard players tag @e[tag=worker] add a
execute @a[score_trigger_min=53,score_trigger=53,score_iCookie=9] ~ ~ ~ execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#54 Worker | Bow to Door
execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=54,score_trigger=54,score_iBow_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"worker","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"worker.2","color":"gray"}] 
execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=54,score_trigger=54,score_iBow_min=1] ~ ~ ~ playsound worker4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=54,score_trigger=54,score_iBow_min=1] bow -1 1
execute @a[score_trigger_min=54,score_trigger=54,score_iBow_min=1] ~ ~ ~ execute @e[tag=worker] ~ ~ ~ setblock -46 25 -194 minecraft:redstone_torch
execute @a[score_trigger_min=54,score_trigger=54,score_iBow_min=1] ~ ~ ~ scoreboard players tag @e[tag=worker] add a
execute @a[score_trigger_min=54,score_trigger=54,score_iBow=0] ~ ~ ~ execute @e[tag=worker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#55 Assassin | Gold to Murder
execute @e[tag=assassin] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"assassin","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"assassin.1","color":"gray"}] 
execute @e[tag=assassin] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ playsound assassin3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=assassin] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] gold_ingot 0 7
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ particle smoke -35.5 36 -177.5 0.3 0.3 0.3 0 50
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ particle smoke -35.5 36 -177.5 0.3 0.3 0.3 0.1 25
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ particle smoke -35.5 36 -177.5 0.3 0.3 0.3 0.5 10
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ setblock 5 24 -267 redstone_torch
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ kill @e[tag=farmer]
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ kill @e[tag=assassin]
execute @a[score_trigger_min=55,score_trigger=55,score_iGold_min=7] ~ ~ ~ scoreboard players tag @e[tag=assassin] add a
execute @a[score_trigger_min=55,score_trigger=55,score_iGold=6] ~ ~ ~ execute @e[tag=assassin] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#56 Thief | Potion
execute @e[tag=thief] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=56,score_trigger=56] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"thief","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"thief.1","color":"gray"}]
execute @e[tag=thief] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=56,score_trigger=56] ~ ~ ~ playsound thief1 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=thief] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=56,score_trigger=56] potion 1 0 {CustomPotionEffects:[{Id:4,Duration:60,ShowParticles:0b}],display:{LocName:"item.pot"},CustomPotionColor:36331,HideFlags:63}
execute @a[score_trigger_min=56,score_trigger=56] ~ ~ ~ scoreboard players tag @e[tag=thief] add a
#57 Hermit | Sapling to Potion
execute @e[tag=hermit] ~ ~ ~ execute @a[score_trigger_min=57,score_trigger=57,score_iSapling_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"hermit","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"hermit.1","color":"gray"}]
execute @e[tag=hermit] ~ ~ ~ execute @a[score_trigger_min=57,score_trigger=57,score_iSapling_min=1] ~ ~ ~ playsound hermit5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=hermit] ~ ~ ~ clear @a[score_trigger_min=57,score_trigger=57,score_iSapling_min=1] sapling 1 1 
execute @e[tag=hermit] ~ ~ ~ give @a[score_trigger_min=57,score_trigger=57,score_iSapling_min=1] potion 1 0 {Potion:"healing"}
execute @a[score_trigger_min=57,score_trigger=57,score_iSapling=0] ~ ~ ~ execute @e[tag=hermit] ~ ~ ~ function mctsts:dialogue/invalid
#58 Hermit | Yellow Dye
execute @e[tag=hermit] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=58,score_trigger=58] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"hermit","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"hermit.2","color":"gray"}]
execute @e[tag=hermit] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=58,score_trigger=58] ~ ~ ~ playsound hermit6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=hermit] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=58,score_trigger=58] ~ ~ ~ give @a[r=5] dye 1 11
execute @a[score_trigger_min=58,score_trigger=58] ~ ~ ~ scoreboard players tag @e[tag=hermit] add b
#59 Witch | Dialogue
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=59,score_trigger=59,score_iCHelmet_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"witch","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"witch.3","color":"gray"}]
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=59,score_trigger=59,score_iCHelmet_min=1] ~ ~ ~ playsound witch5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ tellraw @a[r=5,score_trigger_min=59,score_trigger=59,score_iCHelmet_min=1] ["",{"text":"[","color":"green"},{"translate":"witch.a3.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 60"}},{"text":"] ","color":"green"}]
execute @a[score_trigger_min=59,score_trigger=59,score_iCHelmet_min=1] ~ ~ ~ scoreboard players tag @e[tag=witch] add c
execute @a[score_trigger_min=59,score_trigger=59,score_iCHelmet=0] ~ ~ ~ execute @e[tag=witch] ~ ~ ~ function mctsts:dialogue/invalid
#60 Witch | Chainmail Helmet + Pumpkin Pie to Enchanted Chainmail Helmet
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=60,score_trigger=60,score_iCHelmet_min=1,score_iPPie_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"witch","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"witch.3.1","color":"gray"}]
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=60,score_trigger=60,score_iCHelmet_min=1,score_iPPie_min=1] ~ ~ ~ playsound witch6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ clear @a[score_trigger_min=60,score_trigger=60,score_iCHelmet_min=1,score_iPPie_min=1] pumpkin_pie 0 1 
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ clear @a[score_trigger_min=60,score_trigger=60,score_iCHelmet_min=1,score_iPPie_min=1] chainmail_helmet 0 1 
execute @e[tag=witch] ~ ~ ~ execute @s[tag=!d] ~ ~ ~ execute @a[score_trigger_min=60,score_trigger=60,score_iCHelmet_min=1,score_iPPie_min=1] ~ ~ ~ give @a chainmail_helmet 1 0 {ench:[{id:5,lvl:1}],display:{LocName:"item.slime_helmet"}}
execute @a[score_trigger_min=60,score_trigger=60,score_iCHelmet_min=1,score_iPPie_min=1] ~ ~ ~ scoreboard players tag @e[tag=witch] add d
execute @a[score_trigger_min=60,score_trigger=60,score_iCHelmet=0,score_iPPie_min=1] ~ ~ ~ execute @e[tag=witch] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=60,score_trigger=60,score_iPPie=0,score_iCHelmet_min=1] ~ ~ ~ execute @e[tag=witch] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=60,score_trigger=60,score_iPPie=0,score_iCHelmet=0] ~ ~ ~ execute @e[tag=witch] ~ ~ ~ function mctsts:dialogue/invalid
#61 Baker | Give Wheat
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=61,score_trigger=61,score_iWheat_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"baker","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"baker.2","color":"gray"}]
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=61,score_trigger=61,score_iWheat_min=1] ~ ~ ~ playsound baker5 voice @a[r=5] ~ ~ ~ 100 1
execute @a[score_trigger_min=61,score_trigger=61,score_iWheat_min=1] ~ ~ ~ execute @e[tag=baker] ~ ~ ~ scoreboard players tag @s[tag=!a] add bread
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=61,score_trigger=61,score_iWheat_min=1] wheat 0 3
execute @a[score_trigger_min=61,score_trigger=61,score_iWheat_min=1] ~ ~ ~ scoreboard players tag @e[tag=baker] add a
execute @a[score_trigger_min=61,score_trigger=61,score_iWheat=0] ~ ~ ~ execute @e[tag=baker] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#62 Baker | Take Bread
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=62,score_trigger=62] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"baker","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"baker.2.1","color":"gray"}]
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=62,score_trigger=62] ~ ~ ~ playsound baker6 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ give @a[score_trigger_min=62,score_trigger=62] bread 1 0 {display:{LocName:"item.bread_fresh"}}
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=62,score_trigger=62] ~ ~ ~ scoreboard players tag @e[tag=baker] remove a
execute @e[tag=baker] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=62,score_trigger=62] ~ ~ ~ scoreboard players tag @e[tag=baker] remove b
execute @a[score_trigger_min=62,score_trigger=62] ~ ~ ~ scoreboard players tag @e[tag=baker] add c
#63 Pigman | Coin to Gate
execute @e[tag=pigman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=63,score_trigger=63,score_iCoin_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"pigman","color":"light_purple"},{"text":"] ","color":"dark_gray"},{"translate":"pigman.1","color":"gray"}] 
execute @e[tag=pigman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=63,score_trigger=63,score_iCoin_min=1] ~ ~ ~ playsound pigman2 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=pigman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=63,score_trigger=63,score_iCoin_min=1] diamond_hoe 44 1
execute @a[score_trigger_min=63,score_trigger=63,score_iCoin_min=1] ~ ~ ~ execute @e[tag=pigman] ~ ~ ~ scoreboard players tag @s add nether_gate
execute @a[score_trigger_min=63,score_trigger=63,score_iCoin_min=1] ~ ~ ~ scoreboard players tag @e[tag=pigman] add a
execute @a[score_trigger_min=63,score_trigger=63,score_iCoin=0] ~ ~ ~ execute @e[tag=pigman] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#64 Farmer | Help
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=64,score_trigger=64] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"farmer","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"farmer.2","color":"gray"}]
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=64,score_trigger=64] ~ ~ ~ tellraw @a[r=5,tag=!tip6] {"translate":"tip6","color":"green","italic":true}
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=64,score_trigger=64] ~ ~ ~ scoreboard players tag @a[r=5] add tip6
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=64,score_trigger=64] ~ ~ ~ playsound farmer4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ give @a[score_trigger_min=64,score_trigger=64] minecraft:wooden_hoe 1 45 {CanDestroy:["wheat","carrots","beetroots"],HideFlags:55}
execute @e[tag=farmer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=64,score_trigger=64] ~ ~ ~ scoreboard players set gate Stats 1
execute @a[score_trigger_min=64,score_trigger=64] ~ ~ ~ scoreboard players tag @e[tag=farmer] add b
#65 Astronomer | 12:00-12:59
execute @e[tag=astronomer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=65,score_trigger=65] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"astronomer","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"astronomer.2","color":"gray"}]
execute @e[tag=astronomer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=65,score_trigger=65] ~ ~ ~ playsound astronomer4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=astronomer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=65,score_trigger=65] minecraft:end_crystal
execute @e[tag=astronomer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=65,score_trigger=65] ~ ~ ~ tp @e[tag=astronomer] ~ ~ ~ 260 ~
execute @a[score_trigger_min=65,score_trigger=65] ~ ~ ~ scoreboard players tag @e[tag=astronomer] add a
#66 Astronomer | 0:00-11:59; 13:00-23:59
execute @e[tag=astronomer] ~ ~ ~ execute @a[score_trigger_min=66,score_trigger=66] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"astronomer","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"astronomer.1","color":"gray"}]
execute @e[tag=astronomer] ~ ~ ~ execute @a[score_trigger_min=66,score_trigger=66] ~ ~ ~ playsound astronomer3 voice @a[r=5] ~ ~ ~ 100 1
#67 Mayor | Get Bricks
execute @e[tag=mayor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=67,score_trigger=67] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"mayor","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"mayor.1","color":"gray"}]
execute @e[tag=mayor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=67,score_trigger=67] ~ ~ ~ playsound mayor3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=mayor] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=67,score_trigger=67] brick_block 4 0 {CanPlaceOn:["command_block"],HideFlags:63,display:{Lore:["Can Place On:","Chiseled End Stone Brick"]}}
execute @a[score_trigger_min=67,score_trigger=67] ~ ~ ~ scoreboard players tag @e[tag=mayor] add a
#68 Lucas | Rotten Flesh to Speed Potion
execute @e[tag=checkminer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=68,score_trigger=68,score_iRFlesh_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"checkminer","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"checkminer.1","color":"gray"}] 
execute @e[tag=checkminer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=68,score_trigger=68,score_iRFlesh_min=1] ~ ~ ~ playsound lucas3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=checkminer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=68,score_trigger=68,score_iRFlesh_min=1] rotten_flesh 0 1
execute @a[score_trigger_min=68,score_trigger=68,score_iRFlesh_min=1] ~ ~ ~ execute @e[tag=checkminer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ give @a[score_trigger_min=68,score_trigger=68,score_iRFlesh_min=1] potion 1 0 {Potion:"swiftness"}
execute @a[score_trigger_min=68,score_trigger=68,score_iRFlesh_min=1] ~ ~ ~ scoreboard players tag @e[tag=checkminer] add a
execute @a[score_trigger_min=68,score_trigger=68,score_iRFlesh=0] ~ ~ ~ execute @e[tag=checkminer] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#69 MrK | Shovel to Diamond Leggings
execute @e[tag=mrk] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=69,score_trigger=69,score_iBook_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"mrk","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"mrk.1","color":"gray"}] 
execute @e[tag=mrk] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=69,score_trigger=69,score_iBook_min=1] ~ ~ ~ playsound konstantin1 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=mrk] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=69,score_trigger=69,score_iBook_min=1] book 0 1
execute @a[score_trigger_min=69,score_trigger=69,score_iBook_min=1] ~ ~ ~ execute @e[tag=mrk] ~ ~ ~ give @a[score_trigger_min=69,score_trigger=69,score_iBook_min=1] diamond_leggings
execute @a[score_trigger_min=69,score_trigger=69,score_iBook_min=1] ~ ~ ~ scoreboard players tag @e[tag=mrk] add a
execute @a[score_trigger_min=69,score_trigger=69,score_iBook=0] ~ ~ ~ execute @e[tag=mrk] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#70 EnderPig | Paper & Ink to Shovel
execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=70,score_trigger=70,score_iInk_min=1,score_iFeather_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"enderpig","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"enderpig.1","color":"gray"}] 
execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=70,score_trigger=70,score_iInk_min=1,score_iFeather_min=1] ~ ~ ~ playsound opal3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=70,score_trigger=70,score_iInk_min=1,score_iFeather_min=1] feather 0 1
execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=70,score_trigger=70,score_iInk_min=1,score_iFeather_min=1] dye 0 1
execute @a[score_trigger_min=70,score_trigger=70] ~ ~ ~ execute @e[tag=enderpig] ~ ~ ~ give @a[score_trigger_min=70,score_trigger=70,score_iInk_min=1,score_iFeather_min=1] book
execute @a[score_trigger_min=70,score_trigger=70,score_iInk_min=1,score_iFeather_min=1] ~ ~ ~ scoreboard players tag @e[tag=enderpig] add a
execute @a[score_trigger_min=70,score_trigger=70,score_iInk=0,score_iFeather_min=1] ~ ~ ~ execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=70,score_trigger=70,score_iFeather=0,score_iInk_min=1] ~ ~ ~ execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=70,score_trigger=70,score_iFeather=0,score_iInk=0] ~ ~ ~ execute @e[tag=enderpig] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#71 Mark | Shovel to Repeater
execute @e[tag=marhjo] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"marhjo","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"marhjo.1","color":"gray"}] 
execute @e[tag=marhjo] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ playsound marhjo4 voice @a[r=5] ~ ~ ~ 100 1
execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ execute @e[tag=marhjo] ~ ~ ~ give @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] repeater
execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ execute @e[tag=marhjo] ~ ~ ~ execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ setblock 30 26 -172 air 0 destroy
execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ execute @e[tag=marhjo] ~ ~ ~ execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ entitydata @e[tag=marhjo] {Pose:{Head:[0f,0f,0f]},Rotation:[90f,0f]}
execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ execute @e[tag=marhjo] ~ ~ ~ execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ tp @e[tag=marhjo] ~-0.5 ~ ~
execute @a[score_trigger_min=71,score_trigger=71,score_iShovel_min=1] ~ ~ ~ scoreboard players tag @e[tag=marhjo] add a
execute @a[score_trigger_min=71,score_trigger=71,score_iShovel=0] ~ ~ ~ execute @e[tag=marhjo] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#72 McTsts | Repeater to Diamond Chestplate
execute @e[tag=mctsts] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=72,score_trigger=72,score_iRepeater_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"mctsts","color":"green"},{"text":"] ","color":"dark_gray"},{"translate":"mctsts.1","color":"gray"}] 
execute @e[tag=mctsts] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=72,score_trigger=72,score_iRepeater_min=1] ~ ~ ~ playsound thomas3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=mctsts] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=72,score_trigger=72,score_iRepeater_min=1] repeater 0 1
execute @a[score_trigger_min=72,score_trigger=72,score_iRepeater_min=1] ~ ~ ~ execute @e[tag=mctsts] ~ ~ ~ give @a[score_trigger_min=72,score_trigger=72,score_iRepeater_min=1] diamond_chestplate
execute @a[score_trigger_min=72,score_trigger=72,score_iRepeater_min=1] ~ ~ ~ scoreboard players tag @e[tag=mctsts] add a
execute @a[score_trigger_min=72,score_trigger=72,score_iRepeater=0] ~ ~ ~ execute @e[tag=mctsts] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#73 TTEXTT | Music Disc to Diamond Helmet
execute @e[tag=ttextt] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=73,score_trigger=73,score_iDisc_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"ttextt","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"ttextt.1","color":"gray"}] 
execute @e[tag=ttextt] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=73,score_trigger=73,score_iDisc_min=1] ~ ~ ~ playsound ttextt3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=ttextt] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=73,score_trigger=73,score_iDisc_min=1] record_strad
execute @a[score_trigger_min=73,score_trigger=73,score_iDisc_min=1] ~ ~ ~ execute @e[tag=ttextt] ~ ~ ~ give @a[score_trigger_min=73,score_trigger=73,score_iDisc_min=1] diamond_helmet
execute @a[score_trigger_min=73,score_trigger=73,score_iDisc_min=1] ~ ~ ~ scoreboard players tag @e[tag=ttextt] add a
execute @a[score_trigger_min=73,score_trigger=73,score_iDisc=0] ~ ~ ~ execute @e[tag=ttextt] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#74 BenTechy | Rabbit Foot to Diamond Boots
execute @e[tag=bentechy] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=74,score_trigger=74,score_iRFoot_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"bentechy","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"bentechy.1","color":"gray"}] 
execute @e[tag=bentechy] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=74,score_trigger=74,score_iRFoot_min=1] ~ ~ ~ playsound ben3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=bentechy] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=74,score_trigger=74,score_iRFoot_min=1] rabbit_foot 0 1
execute @a[score_trigger_min=74,score_trigger=74,score_iRFoot_min=1] ~ ~ ~ execute @e[tag=bentechy] ~ ~ ~ give @a[score_trigger_min=74,score_trigger=74,score_iRFoot_min=1] diamond_boots
execute @a[score_trigger_min=74,score_trigger=74,score_iRFoot_min=1] ~ ~ ~ scoreboard players tag @e[tag=bentechy] add a
execute @a[score_trigger_min=74,score_trigger=74,score_iRFoot=0] ~ ~ ~ execute @e[tag=bentechy] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#75 Pufferfish | Beetroot to Water Essence
execute @e[tag=pufferfish] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=75,score_trigger=75,score_iBeetroot_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"pufferfish","color":"yellow"},{"text":"] ","color":"dark_gray"},{"translate":"pufferfish.1","color":"gray"}] 
execute @e[tag=pufferfish] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=75,score_trigger=75,score_iBeetroot_min=1] ~ ~ ~ playsound minecraft:entity.guardian.death hostile @a[r=5] ~ ~ ~ 1 1.5
execute @e[tag=pufferfish] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=75,score_trigger=75,score_iBeetroot_min=1] beetroot 0 1
execute @a[score_trigger_min=75,score_trigger=75,score_iBeetroot_min=1] ~ ~ ~ execute @e[tag=pufferfish] ~ ~ ~ give @a[score_trigger_min=75,score_trigger=75,score_iBeetroot_min=1] minecraft:diamond_hoe 1 46 {display:{LocName:"item.essence_water"},Unbreakable:1,HideFlags:63}
execute @a[score_trigger_min=75,score_trigger=75,score_iBeetroot_min=1] ~ ~ ~ scoreboard players tag @e[tag=pufferfish] add a
execute @a[score_trigger_min=75,score_trigger=75,score_iBeetroot=0] ~ ~ ~ execute @e[tag=pufferfish] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#76 Sprite | 5 Feathers to Air Essence
execute @e[tag=sprite] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=76,score_trigger=76,score_iFeather_min=5] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"sprite","color":"white"},{"text":"] ","color":"dark_gray"},{"translate":"sprite.1","color":"gray"}] 
execute @e[tag=sprite] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=76,score_trigger=76,score_iFeather_min=5] ~ ~ ~ playsound sprite3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=sprite] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=76,score_trigger=76,score_iFeather_min=5] feather 0 5
execute @a[score_trigger_min=76,score_trigger=76,score_iFeather_min=5] ~ ~ ~ execute @e[tag=sprite] ~ ~ ~ give @a[score_trigger_min=76,score_trigger=76,score_iFeather_min=5] minecraft:diamond_hoe 1 47 {display:{LocName:"item.essence_air"},Unbreakable:1,HideFlags:63}
execute @a[score_trigger_min=76,score_trigger=76,score_iFeather_min=5] ~ ~ ~ scoreboard players tag @e[tag=sprite] add a
execute @a[score_trigger_min=76,score_trigger=76,score_iFeather=4] ~ ~ ~ execute @e[tag=sprite] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#77 Ent | Sapling to Branch
execute @e[tag=ent] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=77,score_trigger=77,score_iSapling_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"ent","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"ent.1","color":"gray"}] 
execute @e[tag=ent] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=77,score_trigger=77,score_iSapling_min=1] ~ ~ ~ playsound ent3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=ent] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=77,score_trigger=77,score_iSapling_min=1] sapling 1 1
execute @a[score_trigger_min=77,score_trigger=77,score_iSapling_min=1] ~ ~ ~ execute @e[tag=ent] ~ ~ ~ give @a[score_trigger_min=77,score_trigger=77,score_iSapling_min=1] wooden_axe 1 0 {display:{LocName:"item.branch"},Unbreakable:1,HideFlags:63}
execute @a[score_trigger_min=77,score_trigger=77,score_iSapling_min=1] ~ ~ ~ scoreboard players tag @e[tag=ent] add a
execute @a[score_trigger_min=77,score_trigger=77,score_iSapling=0] ~ ~ ~ execute @e[tag=ent] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#78 Ent King | Branch to Forest Essence
execute @e[tag=ent_king] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=78,score_trigger=78,score_iBranch_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"ent_king","color":"dark_green"},{"text":"] ","color":"dark_gray"},{"translate":"ent_king.1","color":"gray"}] 
execute @e[tag=ent_king] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=78,score_trigger=78,score_iBranch_min=1] ~ ~ ~ playsound entking3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=ent_king] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=78,score_trigger=78,score_iBranch_min=1] wooden_axe 0 1
execute @a[score_trigger_min=78,score_trigger=78,score_iBranch_min=1] ~ ~ ~ execute @e[tag=ent_king] ~ ~ ~ give @a[score_trigger_min=78,score_trigger=78,score_iBranch_min=1] minecraft:diamond_hoe 1 79 {display:{LocName:"item.essence_forest"},Unbreakable:1,HideFlags:63}
execute @a[score_trigger_min=78,score_trigger=78,score_iBranch_min=1] ~ ~ ~ scoreboard players tag @e[tag=ent_king] add a
execute @a[score_trigger_min=78,score_trigger=78,score_iBranch=0] ~ ~ ~ execute @e[tag=ent_king] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#79 Vampire | Health Potion to Darkness Essence
execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"vampire","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"vampire.1","color":"gray"}] 
execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"vampire","color":"dark_red"},{"text":"] ","color":"dark_gray"},{"translate":"vampire.1","color":"gray"}] 
execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ playsound vampire3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS_min=1] ~ ~ ~ playsound vampire3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] minecraft:potion 0 1 {Potion:"healing"}
execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS_min=1] minecraft:potion 0 1 {Potion:"strong_healing"}
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Damage:48s,Count:1,tag:{display:{LocName:"item.essence_darkness"},Unbreakable:1,HideFlags:63}}}
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS_min=1] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_hoe",Damage:48s,Count:1,tag:{display:{LocName:"item.essence_darkness"},Unbreakable:1,HideFlags:63}}}
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ kill @e[tag=vampire]
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS_min=1] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ kill @e[tag=vampire]
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion_min=1] ~ ~ ~ scoreboard players tag @e[tag=vampire] add a
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS_min=1] ~ ~ ~ scoreboard players tag @e[tag=vampire] add a
execute @a[score_trigger_min=79,score_trigger=79,score_iHPotion=0,score_iHPotionS=0] ~ ~ ~ execute @e[tag=vampire] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#80 Percival | Dialogue
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=80,score_trigger=80] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"percival","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"percival.2","color":"gray"}] 
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=80,score_trigger=80] ~ ~ ~ playsound percival2 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=80,score_trigger=80] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"percival.a3","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 81"}},{"text":"] ","color":"green"}]
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=80,score_trigger=80] ~ ~ ~ summon armor_stand 7 26 -186 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:72,tag:{Unbreakable:1}}],Tags:["char","grimsbane"],Rotation:[180f,0f],CustomName:"Grimsbane",Team:black,CustomNameVisible:1}	
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=80,score_trigger=80] ~ ~ ~ scoreboard players tag @e[tag=percival] add a
#81 Percival | Dialogue
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=81,score_trigger=81] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"percival","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"percival.3","color":"gray","with":[{"translate":"percival.3s","italic":"true","color":"gray"}]}]
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=81,score_trigger=81] ~ ~ ~ playsound percival3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=81,score_trigger=81] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"green"},{"translate":"percival.a4","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 82"}},{"text":"] ","color":"green"}]
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=81,score_trigger=81] ~ ~ ~ scoreboard players tag @e[tag=percival] add b
#82 Percival | Diamond Sword + Essences to Magic Sword
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"percival","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"percival.4","color":"gray"}] 
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ playsound percival4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] diamond_sword -1 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] diamond_hoe 46 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] diamond_hoe 47 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] diamond_hoe 48 1
execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ clear @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] diamond_hoe 79 1
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ give @a golden_hoe 1 0 {AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Slot:"mainhand",Amount:200,Operation:0,UUIDMost:61481,UUIDLeast:140909}],display:{LocName:"item.magic_sword"},Unbreakable:1} 
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ scoreboard players tag @e[tag=percival] add c
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness=0,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir_min=1,score_iEDarkness=0,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir_min=1,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness=0,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness_min=1,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness=0,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness=0,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness=0,score_iEWater_min=1,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness_min=1,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness_min=1,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness=0,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness=0,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness_min=1,score_iEWater=0,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir_min=1,score_iEDarkness=0,score_iEWater=0,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword_min=1,score_iEAir=0,score_iEDarkness=0,score_iEWater=0,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir_min=1,score_iEDarkness=0,score_iEWater=0,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness_min=1,score_iEWater=0,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness=0,score_iEWater_min=1,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness=0,score_iEWater=0,score_iEForest_min=1] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=82,score_trigger=82,score_iDSword=0,score_iEAir=0,score_iEDarkness=0,score_iEWater=0,score_iEForest=0] ~ ~ ~ execute @e[tag=percival] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ function mctsts:dialogue/invalid
#83 Sailor | Dialogue
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=83,score_trigger=83] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"sailor","color":"dark_blue"},{"text":"] ","color":"dark_gray"},{"translate":"sailor.3","color":"gray"}]
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=83,score_trigger=83] ~ ~ ~ playsound sailor5 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=sailor] ~ ~ ~ execute @s[tag=!c] ~ ~ ~ execute @a[score_trigger_min=83,score_trigger=83] ~ ~ ~ scoreboard players tag @e[tag=sailor] add c
#84 Dockmaster | String and Yellow Dye to Bow
execute @e[tag=dockmaster] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] ~ ~ ~ tellraw @a[r=5] ["",{"text":"[","color":"dark_gray"},{"translate":"dockmaster","color":"red"},{"text":"] ","color":"dark_gray"},{"translate":"dockmaster.1","color":"gray"}] 
execute @e[tag=dockmaster] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] ~ ~ ~ playsound dockmaster3 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=dockmaster] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] dye 11 1
execute @e[tag=dockmaster] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ clear @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] string 0 1
execute @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] ~ ~ ~ execute @e[tag=dockmaster] ~ ~ ~ give @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] bow 1 0 {HideFlags:62,ench:[{id:48,lvl:3},{id:50,lvl:1},{id:49,lvl:1}]} 
execute @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString_min=1] ~ ~ ~ scoreboard players tag @e[tag=dockmaster] add a
execute @a[score_trigger_min=84,score_trigger=84,score_iYDye=0,score_iString_min=1] ~ ~ ~ execute @e[tag=dockmaster] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
execute @a[score_trigger_min=84,score_trigger=84,score_iYDye_min=1,score_iString=0] ~ ~ ~ execute @e[tag=dockmaster] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ function mctsts:dialogue/invalid
#85 Adventurer | Dialogue
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=85,score_trigger=85] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"adventurer","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"adventurer.2","color":"gray"}]
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=85,score_trigger=85] ~ ~ ~ playsound adventurer4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=adventurer] ~ ~ ~ execute @s[tag=!b] ~ ~ ~ execute @a[score_trigger_min=85,score_trigger=85] ~ ~ ~ scoreboard players tag @e[tag=adventurer] add b
#End
scoreboard players enable @a[score_trigger_min=1] trigger
execute @a[score_trigger_min=1] ~ ~ ~ scoreboard players add traded PlayStats 1
scoreboard players set @a trigger 0
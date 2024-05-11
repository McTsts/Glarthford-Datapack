## Executes as everyone with trigger =/= 0 at their location


##
## START
##
# Rejoin Extend
execute as @s[scores={trigger=-1},gamemode=!adventure] run scoreboard players remove wait Stats 200
execute as @s[scores={trigger=-1},gamemode=!adventure] run tellraw @s ["",{"translate":"rejoin.extended","color":"red"}]
# Spectator Block
execute as @s[scores={trigger=1..},gamemode=spectator] run tellraw @s ["",{"translate":"spectator","color":"red"}]
scoreboard players set @s[scores={trigger=1..},gamemode=spectator] trigger 0
# Stop voices & Get items
execute as @s[scores={trigger=1..}] run stopsound @a[distance=..5] voice
execute as @s[scores={trigger=1..}] run function glarth:mechanic/item 

##
## Trades
##
#1 Lumberjack | Dialogue [A]
execute if entity @s[scores={trigger=1}] run tag @e[type=armor_stand,tag=charA,tag=lumberjack] add charT
execute if entity @s[scores={trigger=1}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=1}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/lumberjack/triggers/1
execute if entity @s[scores={trigger=1}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=1}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=1}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=1}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#2 Lumberjack | Truth to Pickaxe [A]
execute if entity @s[scores={trigger=2}] run tag @e[type=armor_stand,tag=charA,tag=lumberjack] add charT
execute if entity @s[scores={trigger=2}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=2}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/lumberjack/triggers/2
execute if entity @s[scores={trigger=2}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=2}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=2}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=2}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#3 Lumberjack | Lie to Nothing [A]
execute if entity @s[scores={trigger=3}] run tag @e[type=armor_stand,tag=charA,tag=lumberjack] add charT
execute if entity @s[scores={trigger=3}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=3}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/lumberjack/triggers/3
execute if entity @s[scores={trigger=3}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=3}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=3}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=3}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#4 Bum | Key to Holy Grail [A]
execute if entity @s[scores={trigger=4}] run tag @e[type=armor_stand,tag=charA,tag=bum] add charT
execute if entity @s[scores={trigger=4}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=4}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iKey=1..}] run function glarth:dialogue/bum/triggers/4
execute if entity @s[scores={trigger=4}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iKey=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=4}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=4}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=4}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=4}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#5 Fisher | Dialogue [A]
execute if entity @s[scores={trigger=5}] run tag @e[type=armor_stand,tag=charA,tag=fisher] add charT
execute if entity @s[scores={trigger=5}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=5}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/fisher/triggers/5
execute if entity @s[scores={trigger=5}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=5}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=5}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=5}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#6 Priest | Holy Grail to Emerald [A]
execute if entity @s[scores={trigger=6}] run tag @e[type=armor_stand,tag=charA,tag=priest] add charT
execute if entity @s[scores={trigger=6}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=6}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGrail=1..}] run function glarth:dialogue/priest/triggers/6
execute if entity @s[scores={trigger=6}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGrail=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=6}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=6}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=6}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=6}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#7 Richard | Diamond to Nothing [A]
execute if entity @s[scores={trigger=7}] run tag @e[type=armor_stand,tag=charA,tag=richard] add charT
execute if entity @s[scores={trigger=7}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=7}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDiamond=1..}] run function glarth:dialogue/richard/triggers/7
execute if entity @s[scores={trigger=7}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDiamond=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=7}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=7}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=7}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=7}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#8 Bum | Beer to Diamond Hoe [B]
execute if entity @s[scores={trigger=8}] run tag @e[type=armor_stand,tag=charA,tag=bum] add charT
execute if entity @s[scores={trigger=8}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=8}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBeer=1..}] run function glarth:dialogue/bum/triggers/8
execute if entity @s[scores={trigger=8}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBeer=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=8}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=8}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=8}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=8}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#9 Miner | Freshly Baked Bread to Stone Pickaxe [A]
execute if entity @s[scores={trigger=9}] run tag @e[type=armor_stand,tag=charA,tag=miner] add charT
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBreadFresh=1..}] run function glarth:dialogue/miner/triggers/9
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBreadFresh=..0,iBread=1..}] run function glarth:dialogue/miner/triggers/9x
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBreadFresh=..0,iBread=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=9}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=9}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#10 Girl | Bread to Skeleton Skull [A]
execute if entity @s[scores={trigger=10}] run tag @e[type=armor_stand,tag=charA,tag=girl] add charT
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBread=1..}] run function glarth:dialogue/girl/triggers/10
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBread=..0,iBreadFresh=1..}] run function glarth:dialogue/girl/triggers/10x
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBread=..0,iBreadFresh=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=10}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=10}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#11 Tribe Druid | Skeleton Skull to Fermented Spider Eye [A]
execute if entity @s[scores={trigger=11}] run tag @e[type=armor_stand,tag=charA,tag=druid] add charT
execute if entity @s[scores={trigger=11}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=11}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSkull=1..}] run function glarth:dialogue/druid/triggers/11
execute if entity @s[scores={trigger=11}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSkull=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=11}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=11}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=11}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=11}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#12 Witch | Fermented Spider Eye to Diamond Pickaxe [A]
execute if entity @s[scores={trigger=12}] run tag @e[type=armor_stand,tag=charA,tag=witch] add charT
execute if entity @s[scores={trigger=12}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=12}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFermented=1..}] run function glarth:dialogue/witch/triggers/12
execute if entity @s[scores={trigger=12}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFermented=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=12}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=12}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=12}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=12}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#13 Miner | Dialogue []
execute if entity @s[scores={trigger=13}] run tag @e[type=armor_stand,tag=charA,tag=miner] add charT
execute if entity @s[scores={trigger=13}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/miner/triggers/13
execute if entity @s[scores={trigger=13}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=13}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=13}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=13}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#14 ~Moved~ | See 114-117
#15 Adventurer | Diamond to Ender Pearl [A]
execute if entity @s[scores={trigger=15}] run tag @e[type=armor_stand,tag=charA,tag=adventurer] add charT
execute if entity @s[scores={trigger=15}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=15}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDiamond=1..}] run function glarth:dialogue/adventurer/triggers/15
execute if entity @s[scores={trigger=15}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDiamond=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=15}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=15}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=15}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=15}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#16 Archaeologist | Shovel to Bone Block x3 [A]
execute if entity @s[scores={trigger=16}] run tag @e[type=armor_stand,tag=charA,tag=archaeologist] add charT
execute if entity @s[scores={trigger=16}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=16}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShovel=1..}] run function glarth:dialogue/archaeologist/triggers/16
execute if entity @s[scores={trigger=16}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShovel=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=16}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=16}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=16}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=16}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#17 Merchant #1 | Apple to Gold []
execute if entity @s[scores={trigger=17}] run tag @e[type=armor_stand,tag=charA,tag=merchant1] add charT
execute if entity @s[scores={trigger=17}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iApple=1..}] run function glarth:dialogue/merchant1/triggers/17
execute if entity @s[scores={trigger=17}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iApple=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=17}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=17}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=17}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=17}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#18 Enderman | Dialogue [A]
execute if entity @s[scores={trigger=18}] run tag @e[type=armor_stand,tag=charA,tag=enderman] add charT
execute if entity @s[scores={trigger=18}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=18}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/enderman/triggers/18
execute if entity @s[scores={trigger=18}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=18}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=18}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=18}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#19 Tribe Druid | Redstone to String [B]
execute if entity @s[scores={trigger=19}] run tag @e[type=armor_stand,tag=charA,tag=druid] add charT
execute if entity @s[scores={trigger=19}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iRedstone=1..}] run function glarth:dialogue/druid/triggers/19
execute if entity @s[scores={trigger=19}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iRedstone=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=19}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=19}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=19}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=19}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#20 Sailor | Amethyst to Bucket [A]
execute if entity @s[scores={trigger=20}] run tag @e[type=armor_stand,tag=charA,tag=sailor] add charT
execute if entity @s[scores={trigger=20}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=20}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iAmethyst=1..}] run function glarth:dialogue/sailor/triggers/20
execute if entity @s[scores={trigger=20}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iAmethyst=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=20}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=20}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=20}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=20}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#21 Blacksmith | Gold x5 to Chain Helmet [A]
execute if entity @s[scores={trigger=21}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=21}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=21}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=5..}] run function glarth:dialogue/blacksmith/triggers/21
execute if entity @s[scores={trigger=21}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..4}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=21}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=21}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=21}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=21}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#22 Merchant #2 | Leather to Iron []
execute if entity @s[scores={trigger=22}] run tag @e[type=armor_stand,tag=charA,tag=merchant2] add charT
execute if entity @s[scores={trigger=22}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iLeather=1..}] run function glarth:dialogue/merchant2/triggers/22
execute if entity @s[scores={trigger=22}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iLeather=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=22}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=22}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=22}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=22}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#23 Witch | Cauldron to Strong Potion of Healing x3 [B]
execute if entity @s[scores={trigger=23}] run tag @e[type=armor_stand,tag=charA,tag=witch] add charT
execute if entity @s[scores={trigger=23}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=23}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iCauldron=1..}] run function glarth:dialogue/witch/triggers/23
execute if entity @s[scores={trigger=23}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iCauldron=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=23}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=23}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=23}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=23}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#24 Cave Man | Beef to Flint []
execute if entity @s[scores={trigger=24}] run tag @e[type=armor_stand,tag=charA,tag=cave_man] add charT
execute if entity @s[scores={trigger=24}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iBeef=1..}] run function glarth:dialogue/cave_man/triggers/24
execute if entity @s[scores={trigger=24}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iBeef=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=24}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=24}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=24}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=24}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#25 Lumberjack | Water to Shovel [B]
execute if entity @s[scores={trigger=25}] run tag @e[type=armor_stand,tag=charA,tag=lumberjack] add charT
execute if entity @s[scores={trigger=25}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=25}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iWater=1..}] run function glarth:dialogue/lumberjack/triggers/25
execute if entity @s[scores={trigger=25}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iWater=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=25}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=25}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=25}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=25}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#26 Soldier | Stone Sword to Shield [A]
execute if entity @s[scores={trigger=26}] run tag @e[type=armor_stand,tag=charA,tag=soldier] add charT
execute if entity @s[scores={trigger=26}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=26}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSSword=1..}] run function glarth:dialogue/soldier/triggers/26
execute if entity @s[scores={trigger=26}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSSword=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=26}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=26}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=26}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=26}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#27 Explorer | Torch to Iron Boots [A]
execute if entity @s[scores={trigger=27}] run tag @e[type=armor_stand,tag=charA,tag=explorer] add charT
execute if entity @s[scores={trigger=27}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=27}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iTorch=1..}] run function glarth:dialogue/explorer/triggers/27
execute if entity @s[scores={trigger=27}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iTorch=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=27}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=27}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=27}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=27}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#28 Diver | Redstone to Iron Helmet [A]
execute if entity @s[scores={trigger=28}] run tag @e[type=armor_stand,tag=charA,tag=diver] add charT
execute if entity @s[scores={trigger=28}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=28}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRedstone=1..}] run function glarth:dialogue/diver/triggers/28
execute if entity @s[scores={trigger=28}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRedstone=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=28}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=28}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=28}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=28}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#29 Cave Man | Cod to Iron Sword [A]
execute if entity @s[scores={trigger=29}] run tag @e[type=armor_stand,tag=charA,tag=cave_man] add charT
execute if entity @s[scores={trigger=29}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=29}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFish=1..}] run function glarth:dialogue/cave_man/triggers/29
execute if entity @s[scores={trigger=29}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFish=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=29}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=29}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=29}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=29}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#30 Merchant #1 | Dialogue [B]
execute if entity @s[scores={trigger=30}] run tag @e[type=armor_stand,tag=charA,tag=merchant1] add charT
execute if entity @s[scores={trigger=30}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=30}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/merchant1/triggers/30
execute if entity @s[scores={trigger=30}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=30}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=30}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=30}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#31 Merchant #1 | Dialogue [C] {B}
execute if entity @s[scores={trigger=31}] run tag @e[type=armor_stand,tag=charA,tag=merchant1,tag=b] add charT
execute if entity @s[scores={trigger=31}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=31}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/merchant1/triggers/31
execute if entity @s[scores={trigger=31}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=31}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=31}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=31}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#32 Merchant #1 | Diamond Shovel & 2 Gold to Diamond Sword [D] {C}
execute if entity @s[scores={trigger=32}] run tag @e[type=armor_stand,tag=charA,tag=merchant1,tag=c] add charT
execute if entity @s[scores={trigger=32}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=32}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iDShovel=1..,iGold=2..}] run function glarth:dialogue/merchant1/triggers/32
execute if entity @s[scores={trigger=32}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] unless entity @s[scores={iDShovel=1..,iGold=2..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=32}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=32}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=32}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=32}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#33 Evoker | Dialogue [A]
execute if entity @s[scores={trigger=33}] run tag @e[type=armor_stand,tag=charA,tag=evoker] add charT
execute if entity @s[scores={trigger=33}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=33}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/evoker/triggers/33
execute if entity @s[scores={trigger=33}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=33}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=33}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=33}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#34 Evoker | Gold Block to Totem [B] {A}
execute if entity @s[scores={trigger=34}] run tag @e[type=armor_stand,tag=charA,tag=evoker,tag=a] add charT
execute if entity @s[scores={trigger=34}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=34}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iGBlock=1..}] run function glarth:dialogue/evoker/triggers/34
execute if entity @s[scores={trigger=34}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iGBlock=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=34}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=34}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=34}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=34}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#35 Mourner | Totem to Chaos Staff [A]
execute if entity @s[scores={trigger=35}] run tag @e[type=armor_stand,tag=charA,tag=mourner] add charT
execute if entity @s[scores={trigger=35}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=35}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iTotem=1..}] run function glarth:dialogue/mourner/triggers/35
execute if entity @s[scores={trigger=35}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iTotem=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=35}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=35}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=35}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=35}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#36 Sailor | Fishing Rod to Iron Leggings [B]
execute if entity @s[scores={trigger=36}] run tag @e[type=armor_stand,tag=charA,tag=sailor] add charT
execute if entity @s[scores={trigger=36}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=36}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iFRod=1..}] run function glarth:dialogue/sailor/triggers/36
execute if entity @s[scores={trigger=36}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iFRod=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=36}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=36}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=36}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=36}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#37 Priest | Dialogue [B]
execute if entity @s[scores={trigger=37}] run tag @e[type=armor_stand,tag=charA,tag=priest] add charT
execute if entity @s[scores={trigger=37}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=37}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iRing=1..}] run function glarth:dialogue/priest/triggers/37
execute if entity @s[scores={trigger=37}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iRing=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=37}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=37}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=37}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=37}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#38 Priest | Mayor's Ring to Holy Sword [C] {B}
execute if entity @s[scores={trigger=38}] run tag @e[type=armor_stand,tag=charA,tag=priest,tag=b] add charT
execute if entity @s[scores={trigger=38}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=38}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iRing=1..}] run function glarth:dialogue/priest/triggers/38
execute if entity @s[scores={trigger=38}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iRing=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=38}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=38}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=38}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=38}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#39 Grave Digger | Rose to Shovel [A]
execute if entity @s[scores={trigger=39}] run tag @e[type=armor_stand,tag=charA,tag=digger] add charT
execute if entity @s[scores={trigger=39}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=39}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRose=1..}] run function glarth:dialogue/digger/triggers/39
execute if entity @s[scores={trigger=39}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRose=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=39}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=39}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=39}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=39}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#40 Baker | Gold to Cookie []
execute if entity @s[scores={trigger=40}] run tag @e[type=armor_stand,tag=charA,tag=baker] add charT
execute if entity @s[scores={trigger=40}] run tag @e[type=armor_stand,tag=charA,tag=baker2] add charT
execute if entity @s[scores={trigger=40}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=1..}] run function glarth:dialogue/baker/triggers/40
execute if entity @s[scores={trigger=40}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=40}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=40}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=40}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=40}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#41 Blacksmith | Iron to Door [B]
execute if entity @s[scores={trigger=41}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=41}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=41}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iIron=1..}] run function glarth:dialogue/blacksmith/triggers/41
execute if entity @s[scores={trigger=41}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iIron=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=41}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=41}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=41}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=41}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#42 Blacksmith | Emerald|Diamond|Amethyst to Mine [C]
execute if entity @s[scores={trigger=42}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=42}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=42}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] unless entity @s[scores={iDiamond=..0,iEmerald=..0,iAmethyst=..0,iRuby=..0,iSapphire=..0}] run function glarth:dialogue/blacksmith/triggers/42
execute if entity @s[scores={trigger=42}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iDiamond=..0,iEmerald=..0,iAmethyst=..0,iRuby=..0,iSapphire=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=42}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=42}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=42}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=42}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#43 Gunpowder Warden | Web x4 to Powder x2 []
execute if entity @s[scores={trigger=43}] run tag @e[type=armor_stand,tag=charA,tag=gunpowder_warden] add charT
execute if entity @s[scores={trigger=43}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iWeb=4..}] run function glarth:dialogue/gunpowder_warden/triggers/43
execute if entity @s[scores={trigger=43}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iWeb=..3}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=43}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=43}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=43}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=43}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#44 Archaeologist | Diamond Pickaxe to Seal [B]
execute if entity @s[scores={trigger=44}] run tag @e[type=armor_stand,tag=charA,tag=archaeologist] add charT
execute if entity @s[scores={trigger=44}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=44}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iDPickaxe=1..}] run function glarth:dialogue/archaeologist/triggers/44
execute if entity @s[scores={trigger=44}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iDPickaxe=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=44}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=44}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=44}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=44}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#45 Archaeologist | Ruby to Cave [C] {B}
execute if entity @s[scores={trigger=45}] run tag @e[type=armor_stand,tag=charA,tag=archaeologist,tag=b] add charT
execute if entity @s[scores={trigger=45}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=45}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iRuby=1..}] run function glarth:dialogue/archaeologist/triggers/45
execute if entity @s[scores={trigger=45}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iRuby=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=45}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=45}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=45}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=45}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#46 Enderman | Kill using Iron Sword [B]
execute if entity @s[scores={trigger=46}] run tag @e[type=armor_stand,tag=charA,tag=enderman] add charT
execute if entity @s[scores={trigger=46}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=46}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=46}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=46}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=46}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iISword=1..}] run function glarth:dialogue/enderman/triggers/46
execute if entity @s[scores={trigger=46}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iISword=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=46}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#47 Blacksmith | Dialogue [D]
execute if entity @s[scores={trigger=47}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=47}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=47}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] run function glarth:dialogue/blacksmith/triggers/47
execute if entity @s[scores={trigger=47}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=47}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=47}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=47}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#48 Blacksmith | Blaze Powder & Coal x2 to Blaze Coin [E]
execute if entity @s[scores={trigger=48}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=48}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=e] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=48}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iBPowder=1..,iCoal=2..}] run function glarth:dialogue/blacksmith/triggers/48
execute if entity @s[scores={trigger=48}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] unless entity @s[scores={iBPowder=1..,iCoal=2..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=48}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=48}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=48}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=48}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#49 Blacksmith | Take Blaze Coin [G] {F}
execute if entity @s[scores={trigger=49}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith,tag=f] add charT
execute if entity @s[scores={trigger=49}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=g] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=49}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!g] run function glarth:dialogue/blacksmith/triggers/49
execute if entity @s[scores={trigger=49}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=49}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=49}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=49}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#50 Graveyard Guard | Letter Distraction [A]
execute if entity @s[scores={trigger=50}] run tag @e[type=armor_stand,tag=charA,tag=graveyard] add charT
execute if entity @s[scores={trigger=50}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=50}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iLetter=1..}] run function glarth:dialogue/graveyard/triggers/50
execute if entity @s[scores={trigger=50}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iLetter=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=50}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=50}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=50}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=50}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#51 Farmer | Diamond Hoe to Door [A]
execute if entity @s[scores={trigger=51}] run tag @e[type=armor_stand,tag=charA,tag=farmer] add charT
execute if entity @s[scores={trigger=51}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=51}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDHoe=1..}] run function glarth:dialogue/farmer/triggers/51
execute if entity @s[scores={trigger=51}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDHoe=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=51}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=51}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=51}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=51}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#52 Butcher | Rabbit Hide to Door [A]
execute if entity @s[scores={trigger=52}] run tag @e[type=armor_stand,tag=charA,tag=butcher] add charT
execute if entity @s[scores={trigger=52}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=52}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iHide=1..}] run function glarth:dialogue/butcher/triggers/52
execute if entity @s[scores={trigger=52}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iHide=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=52}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=52}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=52}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=52}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#53 Worker | Cookie x10 to Door [A]
execute if entity @s[scores={trigger=53}] run tag @e[type=armor_stand,tag=charA,tag=worker] add charT
execute if entity @s[scores={trigger=53}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=53}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCookie=10..}] run function glarth:dialogue/worker/triggers/53
execute if entity @s[scores={trigger=53}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCookie=..9}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=53}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=53}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=53}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=53}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#54 Worker | Bow to Door [A]
execute if entity @s[scores={trigger=54}] run tag @e[type=armor_stand,tag=charA,tag=worker] add charT
execute if entity @s[scores={trigger=54}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=54}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBow=1..}] run function glarth:dialogue/worker/triggers/54
execute if entity @s[scores={trigger=54}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBow=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=54}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=54}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=54}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=54}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#55 Assassin | Gold x7 to Door [A]
execute if entity @s[scores={trigger=55}] run tag @e[type=armor_stand,tag=charA,tag=assassin] add charT
execute if entity @s[scores={trigger=55}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=55}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=55}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=55}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=55}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=7..}] run function glarth:dialogue/assassin/triggers/55
execute if entity @s[scores={trigger=55}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..6}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=55}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#56 Thief | Potion of Time [A]
execute if entity @s[scores={trigger=56}] run tag @e[type=armor_stand,tag=charA,tag=thief] add charT
execute if entity @s[scores={trigger=56}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=56}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/thief/triggers/56
execute if entity @s[scores={trigger=56}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=56}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=56}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=56}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#57 Hermit | Sapling to Potion []
execute if entity @s[scores={trigger=57}] run tag @e[type=armor_stand,tag=charA,tag=hermit] add charT
execute if entity @s[scores={trigger=57}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iSapling=1..}] run function glarth:dialogue/hermit/triggers/57
execute if entity @s[scores={trigger=57}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iSapling=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=57}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=57}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=57}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=57}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#58 Hermit | Yellow Dye [B]
execute if entity @s[scores={trigger=58}] run tag @e[type=armor_stand,tag=charA,tag=hermit] add charT
execute if entity @s[scores={trigger=58}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=58}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/hermit/triggers/58
execute if entity @s[scores={trigger=58}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=58}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=58}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=58}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#59 Witch | Dialogue [C]
execute if entity @s[scores={trigger=59}] run tag @e[type=armor_stand,tag=charA,tag=witch] add charT
execute if entity @s[scores={trigger=59}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=59}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/witch/triggers/59
execute if entity @s[scores={trigger=59}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=59}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=59}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=59}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#60 Witch | Chainmail Helmet & Pumpkin Pie to Enchanted Chainmail Helmet [D]
execute if entity @s[scores={trigger=60}] run tag @e[type=armor_stand,tag=charA,tag=witch] add charT
execute if entity @s[scores={trigger=60}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=60}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iCHelmet=1..,iPPie=1..}] run function glarth:dialogue/witch/triggers/60
execute if entity @s[scores={trigger=60}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] unless entity @s[scores={iCHelmet=1..,iPPie=1..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=60}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=60}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=60}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=60}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#61 Baker | Give Flour [A]
execute if entity @s[scores={trigger=61}] run tag @e[type=armor_stand,tag=charA,tag=baker] add charT
execute if entity @s[scores={trigger=61}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=61}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFlour=1..}] run function glarth:dialogue/baker/triggers/61
execute if entity @s[scores={trigger=61}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFlour=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=61}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=61}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=61}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=61}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#62 Baker | Take Bread [C] {B}
execute if entity @s[scores={trigger=62}] run tag @e[type=armor_stand,tag=charA,tag=baker,tag=b] add charT
execute if entity @s[scores={trigger=62}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=62}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/baker/triggers/62
execute if entity @s[scores={trigger=62}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=62}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=62}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=62}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#63 Pigman | Coin to Gate [A] {B}
execute if entity @s[scores={trigger=63}] run tag @e[type=armor_stand,tag=charA,tag=pigman] add charT
execute if entity @s[scores={trigger=63}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=63}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCoin=1..}] run function glarth:dialogue/pigman/triggers/63
execute if entity @s[scores={trigger=63}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCoin=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=63}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=63}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=63}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=63}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#64 Farmer | Help [B]
execute if entity @s[scores={trigger=64}] run tag @e[type=armor_stand,tag=charA,tag=farmer] add charT
execute if entity @s[scores={trigger=64}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=64}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/farmer/triggers/64
execute if entity @s[scores={trigger=64}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=64}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=64}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=64}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#65 Astronomer | 10:00-12:59 to Pufferfish [A]
execute if entity @s[scores={trigger=65}] run tag @e[type=armor_stand,tag=charA,tag=astronomer] add charT
execute if entity @s[scores={trigger=65}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=65}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/astronomer/triggers/65
execute if entity @s[scores={trigger=65}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=65}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=65}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=65}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#66 Astronomer | 0:00-09:59; 13:00-23:59 [A]
execute if entity @s[scores={trigger=66}] run tag @e[type=armor_stand,tag=charA,tag=astronomer] add charT
execute if entity @s[scores={trigger=66}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=66}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/astronomer/triggers/66
execute if entity @s[scores={trigger=66}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=66}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=66}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=66}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#67 Mayor | Get Bricks [A]
execute if entity @s[scores={trigger=67}] run tag @e[type=armor_stand,tag=charA,tag=mayor] add charT
execute if entity @s[scores={trigger=67}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=67}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/mayor/triggers/67
execute if entity @s[scores={trigger=67}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=67}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=67}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=67}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#68 Child | Rotten Flesh to Speed Potion [A]
execute if entity @s[scores={trigger=68}] run tag @e[type=armor_stand,tag=charA,tag=checkminer] add charT
execute if entity @s[scores={trigger=68}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=68}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRFlesh=1..}] run function glarth:dialogue/checkminer/triggers/68
execute if entity @s[scores={trigger=68}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRFlesh=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=68}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=68}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=68}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=68}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#69 Konstantin | Shovel to Diamond Leggings [A]
execute if entity @s[scores={trigger=69}] run tag @e[type=armor_stand,tag=charA,tag=mrk] add charT
execute if entity @s[scores={trigger=69}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=69}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iWBook=1..}] run function glarth:dialogue/mrk/triggers/69
execute if entity @s[scores={trigger=69}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iWBook=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=69}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=69}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=69}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=69}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#70 Scribbling Enderman | Paper & Ink to Book [A]
execute if entity @s[scores={trigger=70}] run tag @e[type=armor_stand,tag=charA,tag=enderpig] add charT
execute if entity @s[scores={trigger=70}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=70}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iInk=1..,iFeather=1..}] run function glarth:dialogue/enderpig/triggers/70
execute if entity @s[scores={trigger=70}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] unless entity @s[scores={iInk=1..,iFeather=1..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=70}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=70}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=70}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=70}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#71 Mark | Shovel to Repeater [A]
execute if entity @s[scores={trigger=71}] run tag @e[type=armor_stand,tag=charA,tag=marhjo] add charT
execute if entity @s[scores={trigger=71}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=71}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShovel=1..}] run function glarth:dialogue/marhjo/triggers/71
execute if entity @s[scores={trigger=71}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShovel=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=71}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=71}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=71}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=71}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#72 Thomas | Repeater to Diamond Chestplate [A]
execute if entity @s[scores={trigger=72}] run tag @e[type=armor_stand,tag=charA,tag=mctsts] add charT
execute if entity @s[scores={trigger=72}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=72}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRepeater=1..}] run function glarth:dialogue/mctsts/triggers/72
execute if entity @s[scores={trigger=72}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRepeater=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=72}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=72}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=72}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=72}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#73 TTEXTT | Music Disc to Diamond Helmet [A]
execute if entity @s[scores={trigger=73}] run tag @e[type=armor_stand,tag=charA,tag=ttextt] add charT
execute if entity @s[scores={trigger=73}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=73}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDisc=1..}] run function glarth:dialogue/ttextt/triggers/73
execute if entity @s[scores={trigger=73}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDisc=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=73}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=73}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=73}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=73}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#74 Stargazer | Rabbit Foot to Diamond Boots [A]
execute if entity @s[scores={trigger=74}] run tag @e[type=armor_stand,tag=charA,tag=bentechy] add charT
execute if entity @s[scores={trigger=74}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=74}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRFoot=1..}] run function glarth:dialogue/bentechy/triggers/74
execute if entity @s[scores={trigger=74}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRFoot=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=74}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=74}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=74}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=74}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#75 Pufferfish | Beetroot to Water Essence [A]
execute if entity @s[scores={trigger=75}] run tag @e[type=armor_stand,tag=charA,tag=pufferfish] add charT
execute if entity @s[scores={trigger=75}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=75}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBeetroot=1..}] run function glarth:dialogue/pufferfish/triggers/75
execute if entity @s[scores={trigger=75}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBeetroot=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=75}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=75}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=75}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=75}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#76 Sprite | Feather x5 to Air Essence [A]
execute if entity @s[scores={trigger=76}] run tag @e[type=armor_stand,tag=charA,tag=sprite] add charT
execute if entity @s[scores={trigger=76}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=76}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFeather=5..}] run function glarth:dialogue/sprite/triggers/76
execute if entity @s[scores={trigger=76}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFeather=..4}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=76}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=76}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=76}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=76}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#77 Ent | Sapling to Branch [A]
execute if entity @s[scores={trigger=77}] run tag @e[type=armor_stand,tag=charA,tag=ent] add charT
execute if entity @s[scores={trigger=77}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=77}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSapling=1..}] run function glarth:dialogue/ent/triggers/77
execute if entity @s[scores={trigger=77}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSapling=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=77}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=77}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=77}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=77}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#78 Ent King | Branch to Forest Essence [A]
execute if entity @s[scores={trigger=78}] run tag @e[type=armor_stand,tag=charA,tag=ent_king] add charT
execute if entity @s[scores={trigger=78}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=78}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBranch=1..}] run function glarth:dialogue/ent_king/triggers/78
execute if entity @s[scores={trigger=78}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBranch=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=78}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=78}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=78}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=78}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#79 Vampire | Health Potion to Darkness Essence [A]
execute if entity @s[scores={trigger=79}] run tag @e[type=armor_stand,tag=charA,tag=vampire] add charT
execute if entity @s[scores={trigger=79}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=79}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=79}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=79}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=79}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] unless entity @s[scores={iHPotion=..0,iHPotionS=..0,iHPotion2=..0,iHPotionS2=..0}] run function glarth:dialogue/vampire/triggers/79
execute if entity @s[scores={trigger=79}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iHPotion=..0,iHPotionS=..0,iHPotion2=..0,iHPotionS2=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=79}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#80 Percival | Dialogue [A]
execute if entity @s[scores={trigger=80}] run tag @e[type=armor_stand,tag=charA,tag=percival] add charT
execute if entity @s[scores={trigger=80}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=80}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/percival/triggers/80
execute if entity @s[scores={trigger=80}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=80}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=80}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=80}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#81 Percival | Dialogue [B] {A}
execute if entity @s[scores={trigger=81}] run tag @e[type=armor_stand,tag=charA,tag=percival,tag=a] add charT
execute if entity @s[scores={trigger=81}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=81}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/percival/triggers/81
execute if entity @s[scores={trigger=81}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=81}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=81}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=81}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#82 Percival | Diamond Sword & Essences to Magic Sword [C] {B}
execute if entity @s[scores={trigger=82}] run tag @e[type=armor_stand,tag=charA,tag=percival,tag=b] add charT
execute if entity @s[scores={trigger=82}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=82}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iEssence=3..,iDSword=1..}] run function glarth:dialogue/percival/triggers/82
execute if entity @s[scores={trigger=82}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] unless entity @s[scores={iEssence=3..,iDSword=1..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=82}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=82}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=82}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=82}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#83 Sailor | Dialogue [C]
execute if entity @s[scores={trigger=83}] run tag @e[type=armor_stand,tag=charA,tag=sailor] add charT
execute if entity @s[scores={trigger=83}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=83}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/sailor/triggers/83
execute if entity @s[scores={trigger=83}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=83}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=83}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=83}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#84 Dockmaster | String & Yellow Dye to Bow [A]
execute if entity @s[scores={trigger=84}] run tag @e[type=armor_stand,tag=charA,tag=dockmaster] add charT
execute if entity @s[scores={trigger=84}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=84}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iYDye=1..,iString=1..}] run function glarth:dialogue/dockmaster/triggers/84
execute if entity @s[scores={trigger=84}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] unless entity @s[scores={iYDye=1..,iString=1..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=84}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=84}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=84}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=84}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#85 Adventurer | Dialogue [B]
execute if entity @s[scores={trigger=85}] run tag @e[type=armor_stand,tag=charA,tag=adventurer] add charT
execute if entity @s[scores={trigger=85}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=85}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/adventurer/triggers/85
execute if entity @s[scores={trigger=85}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=85}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=85}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=85}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#86 Merchant #1 | Apple x5 to Gold x5 []
execute if entity @s[scores={trigger=86}] run tag @e[type=armor_stand,tag=charA,tag=merchant1] add charT
execute if entity @s[scores={trigger=86}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iApple=5..}] run function glarth:dialogue/merchant1/triggers/86
execute if entity @s[scores={trigger=86}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iApple=..4}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=86}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=86}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=86}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=86}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#87 Merchant #2 | Leather x3 to Iron x3 []
execute if entity @s[scores={trigger=87}] run tag @e[type=armor_stand,tag=charA,tag=merchant2] add charT
execute if entity @s[scores={trigger=87}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iLeather=3..}] run function glarth:dialogue/merchant2/triggers/87
execute if entity @s[scores={trigger=87}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iLeather=..2}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=87}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=87}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=87}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=87}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#88 Cave Man | Beef x3 to Flint x3 []
execute if entity @s[scores={trigger=88}] run tag @e[type=armor_stand,tag=charA,tag=cave_man] add charT
execute if entity @s[scores={trigger=88}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iBeef=3..}] run function glarth:dialogue/cave_man/triggers/88
execute if entity @s[scores={trigger=88}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iBeef=..2}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=88}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=88}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=88}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=88}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#89 Hermit | Sapling x3 to Health Potion x3
execute if entity @s[scores={trigger=89}] run tag @e[type=armor_stand,tag=charA,tag=hermit] add charT
execute if entity @s[scores={trigger=89}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iSapling=3..}] run function glarth:dialogue/hermit/triggers/89
execute if entity @s[scores={trigger=89}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iSapling=..2}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=89}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=89}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=89}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=89}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#90 Baker | Gold x5 to Cookie x5
execute if entity @s[scores={trigger=90}] run tag @e[type=armor_stand,tag=charA,tag=baker] add charT
execute if entity @s[scores={trigger=90}] run tag @e[type=armor_stand,tag=charA,tag=baker2] add charT
execute if entity @s[scores={trigger=90}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=5..}] run function glarth:dialogue/baker/triggers/90
execute if entity @s[scores={trigger=90}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=..4}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=90}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=90}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=90}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=90}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#91 Evoker | Fight []
execute if entity @s[scores={trigger=91}] run tag @e[type=armor_stand,tag=charA,tag=evoker] add charT
execute if entity @s[scores={trigger=91}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=91}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=91}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=91}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=91}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/evoker/triggers/91
#92 Priest | Holy Grail to Holy Block [D]
execute if entity @s[scores={trigger=92}] run tag @e[type=armor_stand,tag=charA,tag=priest] add charT
execute if entity @s[scores={trigger=92}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=92}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iGrail=1..}] run function glarth:dialogue/priest/triggers/92
execute if entity @s[scores={trigger=92}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iGrail=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=92}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=92}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=92}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=92}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#93 Priest | Bottle [E]
execute if entity @s[scores={trigger=93}] run tag @e[type=armor_stand,tag=charA,tag=priest] add charT
execute if entity @s[scores={trigger=93}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=e] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=93}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] run function glarth:dialogue/priest/triggers/93
execute if entity @s[scores={trigger=93}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=93}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=93}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=93}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#94 Miller | Wheat to Flour [A]
execute if entity @s[scores={trigger=94}] run tag @e[type=armor_stand,tag=charA,tag=miller] add charT
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iWheat=1..}] if score wind Stats matches 1..3 run function glarth:dialogue/miller/triggers/94
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iWheat=1..}] if score wind Stats matches 0 run function glarth:dialogue/miller/triggers/94x
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iWheat=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=94}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=94}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#95 Miller | Take Flour [C] {B}
execute if entity @s[scores={trigger=95}] run tag @e[type=armor_stand,tag=charA,tag=miller,tag=b] add charT
execute if entity @s[scores={trigger=95}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=95}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/miller/triggers/95
execute if entity @s[scores={trigger=95}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=95}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=95}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=95}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#96 Miner Chief | Dialogue [A]
execute if entity @s[scores={trigger=96}] run tag @e[type=armor_stand,tag=charA,tag=miner_chief] add charT
execute if entity @s[scores={trigger=96}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=96}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/miner_chief/triggers/96
execute if entity @s[scores={trigger=96}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=96}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=96}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=96}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#97 Miner Chief | Give TNT [B]
execute if entity @s[scores={trigger=97}] run tag @e[type=armor_stand,tag=charA,tag=miner_chief] add charT
execute if entity @s[scores={trigger=97}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=97}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iTnt=1..}] run function glarth:dialogue/miner_chief/triggers/97
execute if entity @s[scores={trigger=97}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iTnt=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=97}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=97}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=97}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=97}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#98 Gunpowder Warden | Web x2 to Gunpowder []
execute if entity @s[scores={trigger=98}] run tag @e[type=armor_stand,tag=charA,tag=gunpowder_warden] add charT
execute if entity @s[scores={trigger=98}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iWeb=2..}] run function glarth:dialogue/gunpowder_warden/triggers/98
execute if entity @s[scores={trigger=98}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iWeb=..1}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=98}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=98}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=98}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=98}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#99 Sorcerer | End Tutorial []
execute if entity @s[scores={trigger=99}] run tag @e[type=armor_stand,tag=charA,tag=sorcerer] add charT
execute if entity @s[scores={trigger=99}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/sorcerer/triggers/99
execute if entity @s[scores={trigger=99}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=99}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=99}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=99}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#100 Sorcerer | Continue Tutorial []
execute if entity @s[scores={trigger=100}] run tag @e[type=armor_stand,tag=charA,tag=sorcerer] add charT
execute if entity @s[scores={trigger=100}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/sorcerer/triggers/100
execute if entity @s[scores={trigger=100}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=100}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=100}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=100}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#101 Thief | Potion of Progression [A]
execute if entity @s[scores={trigger=101}] run tag @e[type=armor_stand,tag=charA,tag=thief] add charT
execute if entity @s[scores={trigger=101}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=101}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/thief/triggers/101
execute if entity @s[scores={trigger=101}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=101}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=101}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=101}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#102 Helene | Talk []
execute if entity @s[scores={trigger=102}] run tag @e[type=armor_stand,tag=charA,tag=helene] add charT
execute if entity @s[scores={trigger=102}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/helene/triggers/102
execute if entity @s[scores={trigger=102}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=102}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=102}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=102}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#103 Miner Chief | Invalid Item
execute if entity @s[scores={trigger=103}] run tag @e[type=armor_stand,tag=charA,tag=miner_chief] add charT
execute if entity @s[scores={trigger=103}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=103}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=103}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=103}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=103}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#104 Blacksmith | Diamond to Furnace [H]
execute if entity @s[scores={trigger=104}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=104}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=h] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=104}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!h] if entity @s[scores={iDiamond=1..}] run function glarth:dialogue/blacksmith/triggers/104
execute if entity @s[scores={trigger=104}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!h] if entity @s[scores={iDiamond=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=104}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=104}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=104}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=104}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#105 Kid | Key to Door [A]
execute if entity @s[scores={trigger=105}] run tag @e[type=armor_stand,tag=charA,tag=akid] add charT
execute if entity @s[scores={trigger=105}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=105}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iKey=1..}] run function glarth:dialogue/akid/triggers/105
execute if entity @s[scores={trigger=105}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iKey=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=105}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=105}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=105}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=105}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#106 Pufferfish | Pufferfish Bucket to Sponge [B]
execute if entity @s[scores={trigger=106}] run tag @e[type=armor_stand,tag=charA,tag=pufferfish] add charT
execute if entity @s[scores={trigger=106}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=106}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iPBucket=1..}] run function glarth:dialogue/pufferfish/triggers/106
execute if entity @s[scores={trigger=106}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iPBucket=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=106}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=106}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=106}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=106}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#107 Bucket Merchant | Sponge to Wooden Bucket [A]
execute if entity @s[scores={trigger=107}] run tag @e[type=armor_stand,tag=charA,tag=bucketm] add charT
execute if entity @s[scores={trigger=107}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=107}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSponge=1..}] run function glarth:dialogue/bucketm/triggers/107
execute if entity @s[scores={trigger=107}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iSponge=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=107}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=107}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=107}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=107}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#108 Bucket Merchant | Take Wooden Bucket [C] {B}
execute if entity @s[scores={trigger=108}] run tag @e[type=armor_stand,tag=charA,tag=bucketm,tag=b] add charT
execute if entity @s[scores={trigger=108}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=108}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/bucketm/triggers/108
execute if entity @s[scores={trigger=108}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=108}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=108}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=108}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#109 Explorer | Bucket to Open Slime [B]
execute if entity @s[scores={trigger=109}] run tag @e[type=armor_stand,tag=charA,tag=explorer] add charT
execute if entity @s[scores={trigger=109}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=109}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBucket=1..}] run function glarth:dialogue/explorer/triggers/109
execute if entity @s[scores={trigger=109}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBucket=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=109}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=109}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=109}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=109}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#110 Explorer | Wooden Bucket to Open Slime [B]
execute if entity @s[scores={trigger=110}] run tag @e[type=armor_stand,tag=charA,tag=explorer] add charT
execute if entity @s[scores={trigger=110}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=110}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iWBucket=1..}] run function glarth:dialogue/explorer/triggers/110
execute if entity @s[scores={trigger=110}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iWBucket=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=110}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=110}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=110}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=110}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#111 Rose Lover | Carrot to Shears [A]
execute if entity @s[scores={trigger=111}] run tag @e[type=armor_stand,tag=charA,tag=rose] add charT
execute if entity @s[scores={trigger=111}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=111}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCarrot=1..}] run function glarth:dialogue/rose/triggers/111
execute if entity @s[scores={trigger=111}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCarrot=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=111}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=111}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=111}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=111}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#112 Boy | Red Tulip to Sugar [A]
execute if entity @s[scores={trigger=112}] run tag @e[type=armor_stand,tag=charA,tag=brother] add charT
execute if entity @s[scores={trigger=112}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=112}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRTulip=1..}] run function glarth:dialogue/brother/triggers/112
execute if entity @s[scores={trigger=112}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRTulip=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=112}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=112}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=112}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=112}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#113 Boy | Red Tulip to Sugar [A]
execute if entity @s[scores={trigger=113}] run tag @e[type=armor_stand,tag=charA,tag=brother] add charT
execute if entity @s[scores={trigger=113}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=113}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iPTulip=1..}] run function glarth:dialogue/brother/triggers/113
execute if entity @s[scores={trigger=113}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iPTulip=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=113}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=113}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=113}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=113}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#14 Brewer | Blaze Powder to Fire Resistance Potion [A]
execute if entity @s[scores={trigger=14}] run tag @e[type=armor_stand,tag=charA,tag=brewer] add charT
execute if entity @s[scores={trigger=14}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=14}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBPowder=1..}] run function glarth:dialogue/brewer/triggers/14
execute if entity @s[scores={trigger=14}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBPowder=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=14}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=14}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=14}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=14}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#114 Brewer | Feather to Speed Potion [A]
execute if entity @s[scores={trigger=114}] run tag @e[type=armor_stand,tag=charA,tag=brewer] add charT
execute if entity @s[scores={trigger=114}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=114}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFeather=1..}] run function glarth:dialogue/brewer/triggers/114
execute if entity @s[scores={trigger=114}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFeather=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=114}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=114}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=114}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=114}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#115 Brewer | Golden Carrot to Jump Potion [A]
execute if entity @s[scores={trigger=115}] run tag @e[type=armor_stand,tag=charA,tag=brewer] add charT
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGCarrot=1..}] run function glarth:dialogue/brewer/triggers/115
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGCarrot=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=115}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#116 Brewer | Apple + Sugar to Energizing Potion [A]
execute if entity @s[scores={trigger=116}] run tag @e[type=armor_stand,tag=charA,tag=brewer] add charT
execute if entity @s[scores={trigger=116}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=116}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iApple=1..,iSugar=1..}] run function glarth:dialogue/brewer/triggers/116
execute if entity @s[scores={trigger=116}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] unless entity @s[scores={iApple=1..,iSugar=1..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=116}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=116}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=116}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=116}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#117 Brewer | Take Potion [] {B}
execute if entity @s[scores={trigger=117}] run tag @e[type=armor_stand,tag=charA,tag=brewer,tag=b] add charT
execute if entity @s[scores={trigger=117}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/brewer/triggers/117
execute if entity @s[scores={trigger=117}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=117}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=117}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=117}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#118 Time Traveller | Emerald to Energizing Potion [A]
execute if entity @s[scores={trigger=118}] run tag @e[type=armor_stand,tag=charA,tag=time_traveller] add charT
execute if entity @s[scores={trigger=118}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=118}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iEmerald=1..}] run function glarth:dialogue/time_traveller/triggers/118
execute if entity @s[scores={trigger=118}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iEmerald=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=118}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=118}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=118}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=118}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#119 Explorer | Shear to open Ascension [C]
execute if entity @s[scores={trigger=119}] run tag @e[type=armor_stand,tag=charA,tag=explorer] add charT
execute if entity @s[scores={trigger=119}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=119}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iShears=1..}] run function glarth:dialogue/explorer/triggers/119
execute if entity @s[scores={trigger=119}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iShears=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=119}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=119}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=119}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=119}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#120 Explorer | Ask Torch [D]
execute if entity @s[scores={trigger=120}] run tag @e[type=armor_stand,tag=charA,tag=explorer] add charT
execute if entity @s[scores={trigger=120}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=120}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] run function glarth:dialogue/explorer/triggers/120
execute if entity @s[scores={trigger=120}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=120}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=120}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=120}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#121 Explorer | Amethyst to allow torch [E] {D}
execute if entity @s[scores={trigger=121}] run tag @e[type=armor_stand,tag=charA,tag=explorer,tag=d] add charT
execute if entity @s[scores={trigger=121}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=e] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=121}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iAmethyst=1..}] run function glarth:dialogue/explorer/triggers/121
execute if entity @s[scores={trigger=121}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iAmethyst=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=121}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=121}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=121}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=121}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#122 Explorer | Torch to open Ascension [C] {E}
execute if entity @s[scores={trigger=122}] run tag @e[type=armor_stand,tag=charA,tag=explorer,tag=e] add charT
execute if entity @s[scores={trigger=122}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=122}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iTorch=1..}] run function glarth:dialogue/explorer/triggers/122
execute if entity @s[scores={trigger=122}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iTorch=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=122}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=122}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=122}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=122}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#123 Guard | Energizing Potion to Gate Key [A]
execute if entity @s[scores={trigger=123}] run tag @e[type=armor_stand,tag=charA,tag=guard] add charT
execute if entity @s[scores={trigger=123}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=123}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iEPotion=1..}] run function glarth:dialogue/guard/triggers/123
execute if entity @s[scores={trigger=123}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iEPotion=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=123}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=123}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=123}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=123}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#124 Explorer | Ask Shear [F]
execute if entity @s[scores={trigger=124}] run tag @e[type=armor_stand,tag=charA,tag=explorer] add charT
execute if entity @s[scores={trigger=124}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=f] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=124}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!f] run function glarth:dialogue/explorer/triggers/124
execute if entity @s[scores={trigger=124}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=124}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=124}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=124}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#125 Brewer | Ask Potion [C]
execute if entity @s[scores={trigger=125}] run tag @e[type=armor_stand,tag=charA,tag=brewer] add charT
execute if entity @s[scores={trigger=125}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=125}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/brewer/triggers/125
execute if entity @s[scores={trigger=125}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=125}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=125}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=125}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#126 Fisher | Beer to Fishing Rod [B] {A}
execute if entity @s[scores={trigger=126}] run tag @e[type=armor_stand,tag=charA,tag=fisher,tag=a] add charT
execute if entity @s[scores={trigger=126}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=126}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBeer=1..}] run function glarth:dialogue/fisher/triggers/126
execute if entity @s[scores={trigger=126}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBeer=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=126}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=126}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=126}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=126}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#127 Thief | Potion of Storm [A]
execute if entity @s[scores={trigger=127}] run tag @e[type=armor_stand,tag=charA,tag=thief] add charT
execute if entity @s[scores={trigger=127}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=127}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/thief/triggers/127
execute if entity @s[scores={trigger=127}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=127}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=127}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=127}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#128 Bow Merchant | Gold x30 to Crossbow [A]
execute if entity @s[scores={trigger=128}] run tag @e[type=armor_stand,tag=charA,tag=bowm] add charT
execute if entity @s[scores={trigger=128}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=128}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=30..}] run function glarth:dialogue/bowm/triggers/128
execute if entity @s[scores={trigger=128}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..29}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=128}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=128}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=128}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=128}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#129 Bow Merchant | Gold x3 to Arrow []
execute if entity @s[scores={trigger=129}] run tag @e[type=armor_stand,tag=charA,tag=bowm] add charT
execute if entity @s[scores={trigger=129}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=3..}] run function glarth:dialogue/bowm/triggers/129
execute if entity @s[scores={trigger=129}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=..2}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=129}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=129}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=129}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=129}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#130 Bow Merchant | Gold x9 to Arrow x3 []
execute if entity @s[scores={trigger=130}] run tag @e[type=armor_stand,tag=charA,tag=bowm] add charT
execute if entity @s[scores={trigger=130}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=9..}] run function glarth:dialogue/bowm/triggers/130
execute if entity @s[scores={trigger=130}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=..8}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=130}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=130}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=130}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=130}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 131 Bow Merchant | Archery Training [B]
execute if entity @s[scores={trigger=131}] run tag @e[type=armor_stand,tag=charA,tag=bowm] add charT
execute if entity @s[scores={trigger=131}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=131}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] unless entity @s[scores={iBow=..0,iCBow=..0}] run function glarth:dialogue/bowm/triggers/131
execute if entity @s[scores={trigger=131}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iBow=..0,iCBow=..0}] run function glarth:dialogue/bowm/triggers/131x
execute if entity @s[scores={trigger=131}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=131}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=131}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=131}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#132 Graveyard Guard | Iron Chestplate [C]
execute if entity @s[scores={trigger=132}] run tag @e[type=armor_stand,tag=charA,tag=graveyard] add charT
execute if entity @s[scores={trigger=132}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=132}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/graveyard/triggers/132
execute if entity @s[scores={trigger=132}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=132}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=132}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=132}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#133 Blacksmith | Hint [I]
execute if entity @s[scores={trigger=133}] run tag @e[type=armor_stand,tag=charA,tag=blacksmith] add charT
execute if entity @s[scores={trigger=133}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=i] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=133}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!i] run function glarth:dialogue/blacksmith/triggers/133
execute if entity @s[scores={trigger=133}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=133}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=133}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=133}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#134 Adventurer | Ask Gemstone [C]
execute if entity @s[scores={trigger=134}] run tag @e[type=armor_stand,tag=charA,tag=adventurer] add charT
execute if entity @s[scores={trigger=134}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=134}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/adventurer/triggers/134
execute if entity @s[scores={trigger=134}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=134}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=134}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=134}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#135 Pigman | Ask Nether Coin [B]
execute if entity @s[scores={trigger=135}] run tag @e[type=armor_stand,tag=charA,tag=pigman] add charT
execute if entity @s[scores={trigger=135}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=135}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/pigman/triggers/135
execute if entity @s[scores={trigger=135}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=135}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=135}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=135}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#136 Ent King | Dialogue [C] {B}
execute if entity @s[scores={trigger=136}] run tag @e[type=armor_stand,tag=charA,tag=ent_king,tag=b] add charT
execute if entity @s[scores={trigger=136}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=136}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/ent_king/triggers/136
execute if entity @s[scores={trigger=136}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=136}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=136}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=136}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#137 Ent King | Bone Meal to Phantom Membrane [D] {C}
execute if entity @s[scores={trigger=137}] run tag @e[type=armor_stand,tag=charA,tag=ent_king,tag=c] add charT
execute if entity @s[scores={trigger=137}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=137}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iBMeal=1..}] run function glarth:dialogue/ent_king/triggers/137
execute if entity @s[scores={trigger=137}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iBMeal=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=137}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=137}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=137}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=137}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#138 Snowman | Carrot to Ice Sword [A]
execute if entity @s[scores={trigger=138}] run tag @e[type=armor_stand,tag=charA,tag=snowman] add charT
execute if entity @s[scores={trigger=138}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=138}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCarrot=1..}] run function glarth:dialogue/snowman/triggers/138
execute if entity @s[scores={trigger=138}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCarrot=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=138}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=138}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=138}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=138}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#139 Bucket Merchant | Dialogue [D]
execute if entity @s[scores={trigger=139}] run tag @e[type=armor_stand,tag=charA,tag=bucketm] add charT
execute if entity @s[scores={trigger=139}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=139}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] run function glarth:dialogue/bucketm/triggers/139
execute if entity @s[scores={trigger=139}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=139}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=139}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=139}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#140 Witch | Skeleton Skull to Witch Hat [E]
execute if entity @s[scores={trigger=140}] run tag @e[type=armor_stand,tag=charA,tag=witch] add charT
execute if entity @s[scores={trigger=140}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=e] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=140}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iSkull=1..}] run function glarth:dialogue/witch/triggers/140
execute if entity @s[scores={trigger=140}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iSkull=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=140}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=140}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=140}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=140}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#141 Enderman | Kill using Diamond Sword [B]
execute if entity @s[scores={trigger=141}] run tag @e[type=armor_stand,tag=charA,tag=enderman] add charT
execute if entity @s[scores={trigger=141}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=141}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=141}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=141}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=141}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iDSword=1..}] run function glarth:dialogue/enderman/triggers/141
execute if entity @s[scores={trigger=141}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iDSword=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=141}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#142 Assassin | Gold x7 to Kill Blaze [A]
execute if entity @s[scores={trigger=142}] run tag @e[type=armor_stand,tag=charA,tag=assassin] add charT
execute if entity @s[scores={trigger=142}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=142}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=142}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=142}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=142}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=7..}] run function glarth:dialogue/assassin/triggers/142
execute if entity @s[scores={trigger=142}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..6}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=142}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#143 Trader | Iron x5 to Chainmail Helmet [A]
execute if entity @s[scores={trigger=143}] run tag @e[type=armor_stand,tag=charA,tag=trader] add charT
execute if entity @s[scores={trigger=143}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=143}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=143}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=143}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=143}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iIron=5..}] run function glarth:dialogue/trader/triggers/143
execute if entity @s[scores={trigger=143}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iIron=..4}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=143}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#144 Trader | Emerald to Fermented Spider Eye [B]
execute if entity @s[scores={trigger=144}] run tag @e[type=armor_stand,tag=charA,tag=trader] add charT
execute if entity @s[scores={trigger=144}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=144}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=144}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=144}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=144}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iEmerald=1..}] run function glarth:dialogue/trader/triggers/144
execute if entity @s[scores={trigger=144}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iEmerald=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=144}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#145 Trader | Redstone x3 to Diamond Sword [C]
execute if entity @s[scores={trigger=145}] run tag @e[type=armor_stand,tag=charA,tag=trader] add charT
execute if entity @s[scores={trigger=145}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=145}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=145}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=145}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=145}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iRedstone=3..}] run function glarth:dialogue/trader/triggers/145
execute if entity @s[scores={trigger=145}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iRedstone=..2}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=145}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#146 Demon | Blaze Powder to Fire Esssence [A]
execute if entity @s[scores={trigger=146}] run tag @e[type=armor_stand,tag=charA,tag=demon] add charT
execute if entity @s[scores={trigger=146}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=146}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=146}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=146}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=146}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBPowder=1..}] run function glarth:dialogue/demon/triggers/146
execute if entity @s[scores={trigger=146}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iBPowder=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=146}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 147 Monk | Dialogue [A]
execute if entity @s[scores={trigger=147}] run tag @e[type=armor_stand,tag=charA,tag=monk] add charT
execute if entity @s[scores={trigger=147}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=147}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/monk/triggers/147
execute if entity @s[scores={trigger=147}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=147}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=147}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=147}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 148 Sleepless Man | Rotten Flesh x10 to Poison Sword [A]
execute if entity @s[scores={trigger=148}] run tag @e[type=armor_stand,tag=charA,tag=sleepless_m] add charT
execute if entity @s[scores={trigger=148}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=148}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRFlesh=10..}] run function glarth:dialogue/sleepless_m/triggers/148
execute if entity @s[scores={trigger=148}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRFlesh=..9}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=148}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=148}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=148}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=148}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 149 Grandma | Energizing Potion to Knitting Needles [A]
execute if entity @s[scores={trigger=149}] run tag @e[type=armor_stand,tag=charA,tag=grandma] add charT
execute if entity @s[scores={trigger=149}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=149}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iEPotion=1..}] run function glarth:dialogue/grandma/triggers/149
execute if entity @s[scores={trigger=149}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iEPotion=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=149}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=149}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=149}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=149}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 150 Pillager Guard #1 (Outer) | Dialogue [A]
execute if entity @s[scores={trigger=150}] run tag @e[type=armor_stand,tag=charA,tag=pillager_guard1] add charT
execute if entity @s[scores={trigger=150}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=150}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/pillager_guard1/triggers/150
execute if entity @s[scores={trigger=150}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=150}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=150}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=150}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 151 Pillager Guard #2 (Inner) | Brewery Entry [A]
execute if entity @s[scores={trigger=151}] run tag @e[type=armor_stand,tag=charA,tag=pillager_guard2] add charT
execute if entity @s[scores={trigger=151}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=151}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] unless entity @s[scores={iCrossbow=1..,iVindicatorSkull=1..,iBanner=1..}] run function glarth:dialogue/pillager_guard2/triggers/151x
execute if entity @s[scores={trigger=151}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iCrossbow=1..,iVindicatorSkull=1..,iBanner=1..}] run function glarth:dialogue/pillager_guard2/triggers/151
execute if entity @s[scores={trigger=115}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=151}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=151}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=151}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 152 Special Illusioner | Throwable Training [A]
execute if entity @s[scores={trigger=152}] run tag @e[type=armor_stand,tag=charA,tag=illusioner_s] add charT
execute if entity @s[scores={trigger=152}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=152}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/illusioner_s/triggers/152
execute if entity @s[scores={trigger=152}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=152}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=152}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=152}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 153 Assassin | Gold x7 to Vindicator Bannerman [A]
execute if entity @s[scores={trigger=153}] run tag @e[type=armor_stand,tag=charA,tag=assassin] add charT
execute if entity @s[scores={trigger=153}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=153}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=153}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=153}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=153}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=7..}] run function glarth:dialogue/assassin/triggers/153
execute if entity @s[scores={trigger=153}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..6}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=153}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 154 Evoker | Dialogue [C]
execute if entity @s[scores={trigger=154}] run tag @e[type=armor_stand,tag=charA,tag=evoker] add charT
execute if entity @s[scores={trigger=154}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=154}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/evoker/triggers/154
execute if entity @s[scores={trigger=154}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=154}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=154}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=154}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 155 Evoker | Tophat to Banner [A]
execute if entity @s[scores={trigger=155}] run tag @e[type=armor_stand,tag=charA,tag=evoker] add charT
execute if entity @s[scores={trigger=155}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=155}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=155}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=155}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=155}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iHat=1..}] run function glarth:dialogue/evoker/triggers/155
execute if entity @s[scores={trigger=155}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] if entity @s[scores={iHat=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=155}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 156 Special Pillager #1 | Iron Sword to Crossbow [A]
execute if entity @s[scores={trigger=156}] run tag @e[type=armor_stand,tag=charA,tag=pillager_s1] add charT
execute if entity @s[scores={trigger=156}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=156}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=156}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=156}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=156}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iISword=1..}] run function glarth:dialogue/pillager_s1/triggers/156
execute if entity @s[scores={trigger=156}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iISword=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=156}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 157 Thief | Brewery Break-In Plan [A]
execute if entity @s[scores={trigger=157}] run tag @e[type=armor_stand,tag=charA,tag=thief] add charT
execute if entity @s[scores={trigger=157}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=157}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/thief/triggers/157
execute if entity @s[scores={trigger=157}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=157}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=157}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=157}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 158 Adri | Show Dog [A]
execute if entity @s[scores={trigger=158}] run tag @e[type=armor_stand,tag=charA,tag=adri] add charT
execute if entity @s[scores={trigger=158}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=158}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/adri/triggers/158
execute if entity @s[scores={trigger=158}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=158}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=158}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=158}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 159 Adri | Give Dog [A]
execute if entity @s[scores={trigger=159}] run tag @e[type=armor_stand,tag=charA,tag=adri,tag=a] add charT
execute if entity @s[scores={trigger=159}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=159}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/adri/triggers/159
execute if entity @s[scores={trigger=159}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=159}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=159}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=159}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 160 Ender Merchant | Shulker Shell to Popped Chorus Fruit [A]
execute if entity @s[scores={trigger=160}] run tag @e[type=armor_stand,tag=charA,tag=ender_merchant] add charT
execute if entity @s[scores={trigger=160}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=160}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=160}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=160}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=160}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShulkerShell=1..}] run function glarth:dialogue/ender_merchant/triggers/160
execute if entity @s[scores={trigger=160}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShulkerShell=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=160}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 161 Ender Guard Special | Popped Chorus Fruit to Upper Floor [A]
execute if entity @s[scores={trigger=161}] run tag @e[type=armor_stand,tag=charA,tag=ender_guard_s] add charT
execute if entity @s[scores={trigger=161}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=161}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=161}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=161}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=161}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iPCFruit=1..}] run function glarth:dialogue/ender_guard_s/triggers/161
execute if entity @s[scores={trigger=161}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iPCFruit=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=161}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
#162 Mark | Shovel to Repeater [A]
execute if entity @s[scores={trigger=162}] run tag @e[type=armor_stand,tag=charA,tag=marhjo] add charT
execute if entity @s[scores={trigger=162}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=162}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDShovel=1..}] run function glarth:dialogue/marhjo/triggers/162
execute if entity @s[scores={trigger=162}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iDShovel=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=162}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=162}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=162}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=162}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#163 Vampire | Chicken to Fang [B]
execute if entity @s[scores={trigger=163}] run tag @e[type=armor_stand,tag=charA,tag=vampire] add charT
execute if entity @s[scores={trigger=163}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=163}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iChicken=1..}] run function glarth:dialogue/vampire/triggers/163
execute if entity @s[scores={trigger=163}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iChicken=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=163}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=163}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=163}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=163}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#164 Gibbs | Fang to TBD [A]
execute if entity @s[scores={trigger=164}] run tag @e[type=armor_stand,tag=charA,tag=gibbs] add charT
execute if entity @s[scores={trigger=164}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=164}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFang=1..}] run function glarth:dialogue/gibbs/triggers/164
execute if entity @s[scores={trigger=164}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iFang=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=164}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=164}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=164}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=164}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#165 Enderman S2 | Chorus Fruit to EApple [A]
execute if entity @s[scores={trigger=165}] run tag @e[type=armor_stand,tag=charA,tag=enderman_s2] add charT
execute if entity @s[scores={trigger=165}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=165}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iChorusFruit=1..}] run function glarth:dialogue/enderman_s2/triggers/165
execute if entity @s[scores={trigger=165}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iChorusFruit=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=165}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=165}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=165}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=165}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#166 Enderman S1 | Chorus Fruit to EApple [A]
execute if entity @s[scores={trigger=166}] run tag @e[type=armor_stand,tag=charA,tag=enderman_s1] add charT
execute if entity @s[scores={trigger=166}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=166}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShulkerShell=1..}] run function glarth:dialogue/enderman_s1/triggers/166
execute if entity @s[scores={trigger=166}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iShulkerShell=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=166}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=166}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=166}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=166}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#167 Graveyard Guard | Letter Distraction [D]
execute if entity @s[scores={trigger=167}] run tag @e[type=armor_stand,tag=charA,tag=graveyard] add charT
execute if entity @s[scores={trigger=167}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=167}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iMLetter=1..}] run function glarth:dialogue/graveyard/triggers/167
execute if entity @s[scores={trigger=167}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iMLetter=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=167}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=167}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=167}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=167}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#168 Piglin #6 | Hoglin Meat to Golden Chestplate [A]
execute if entity @s[scores={trigger=168}] run tag @e[type=armor_stand,tag=charA,tag=piglin6] add charT
execute if entity @s[scores={trigger=168}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=168}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iHMeat=1..}] run function glarth:dialogue/piglin6/triggers/168
execute if entity @s[scores={trigger=168}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iHMeat=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=168}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=168}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=168}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=168}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#169 Brewer | Ghast Tear to Regeneration Potion [A]
execute if entity @s[scores={trigger=169}] run tag @e[type=armor_stand,tag=charA,tag=brewer] add charT
execute if entity @s[scores={trigger=169}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=169}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGTear=1..}] run function glarth:dialogue/brewer/triggers/169
execute if entity @s[scores={trigger=169}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGTear=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=169}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=169}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=169}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=169}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#170 Dockmaster | Ask Ride [B]
execute if entity @s[scores={trigger=170}] run tag @e[type=armor_stand,tag=charA,tag=dockmaster] add charT
execute if entity @s[scores={trigger=170}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=170}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/dockmaster/triggers/170
execute if entity @s[scores={trigger=170}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=170}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=170}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=170}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#171 Dockmaster | Coal to Ride [C]
execute if entity @s[scores={trigger=171}] run tag @e[type=armor_stand,tag=charA,tag=dockmaster,tag=b] add charT
execute if entity @s[scores={trigger=171}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=171}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iCoal=16..}] run function glarth:dialogue/dockmaster/triggers/171
execute if entity @s[scores={trigger=171}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iCoal=..15}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=171}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=171}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=171}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=171}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#172 Dockmaster | Ask Ride [D]
execute if entity @s[scores={trigger=172}] run tag @e[type=armor_stand,tag=charA,tag=dockmaster] add charT
execute if entity @s[scores={trigger=172}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=7..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=172}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..7,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=172}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..7,tag=!d] run function glarth:dialogue/dockmaster/triggers/172
execute if entity @s[scores={trigger=172}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=172}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=172}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#173 Dockmaster | Ask Ride [E]
execute if entity @s[scores={trigger=173}] run tag @e[type=armor_stand,tag=charA,tag=dockmaster] add charT
execute if entity @s[scores={trigger=173}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=7..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=173}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..7,tag=e] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=173}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..7,tag=!e] run function glarth:dialogue/dockmaster/triggers/173
execute if entity @s[scores={trigger=173}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=173}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=173}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#174 Richard | Give Key [B]
execute if entity @s[scores={trigger=174}] run tag @e[type=armor_stand,tag=charA,tag=richard] add charT
execute if entity @s[scores={trigger=174}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=174}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iKey=1..}] run function glarth:dialogue/richard/triggers/174
execute if entity @s[scores={trigger=174}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iKey=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=174}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=174}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=174}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=174}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#175 Piglin #2 | Ask 1 [D]
execute if entity @s[scores={trigger=175}] run tag @e[type=armor_stand,tag=charA,tag=piglin2] add charT
execute if entity @s[scores={trigger=175}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=175}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] run function glarth:dialogue/piglin2/triggers/175
execute if entity @s[scores={trigger=175}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=175}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=175}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=175}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#176 Piglin #2 | Ask 2 [D]
execute if entity @s[scores={trigger=176}] run tag @e[type=armor_stand,tag=charA,tag=piglin2] add charT
execute if entity @s[scores={trigger=176}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=176}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] run function glarth:dialogue/piglin2/triggers/176
execute if entity @s[scores={trigger=176}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=176}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=176}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=176}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#177 Piglin #2 | Ask 3 [D]
execute if entity @s[scores={trigger=177}] run tag @e[type=armor_stand,tag=charA,tag=piglin2] add charT
execute if entity @s[scores={trigger=177}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=d] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=177}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!d] run function glarth:dialogue/piglin2/triggers/177
execute if entity @s[scores={trigger=177}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=177}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=177}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=177}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#178 Piglin #2 | Trade Totem of Undying to Ghast Tear [E]
execute if entity @s[scores={trigger=178}] run tag @e[type=armor_stand,tag=charA,tag=piglin2] add charT
execute if entity @s[scores={trigger=178}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=e] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=178}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iTotem=1..}] run function glarth:dialogue/piglin2/triggers/178
execute if entity @s[scores={trigger=178}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!e] if entity @s[scores={iTotem=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=178}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=178}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=178}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=178}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#179 Gibbs | Ask
execute if entity @s[scores={trigger=179}] run tag @e[type=armor_stand,tag=charA,tag=gibbs] add charT
execute if entity @s[scores={trigger=179}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] run function glarth:dialogue/gibbs/triggers/179
execute if entity @s[scores={trigger=179}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=179}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=179}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=179}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#180 Pigman | Ask Gate [C]
execute if entity @s[scores={trigger=180}] run tag @e[type=armor_stand,tag=charA,tag=pigman] add charT
execute if entity @s[scores={trigger=180}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=180}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] run function glarth:dialogue/pigman/triggers/180
execute if entity @s[scores={trigger=180}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=180}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=180}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=180}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#181 Piglin #7 | Ask Armor [A]
execute if entity @s[scores={trigger=181}] run tag @e[type=armor_stand,tag=charA,tag=piglin7] add charT
execute if entity @s[scores={trigger=181}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=181}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/piglin7/triggers/181
execute if entity @s[scores={trigger=181}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=181}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=181}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=181}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#182 Snowman | Carrot to Ice Sword [A]
execute if entity @s[scores={trigger=182}] run tag @e[type=armor_stand,tag=charA,tag=snowman] add charT
execute if entity @s[scores={trigger=182}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=182}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGCarrot=1..}] run function glarth:dialogue/snowman/triggers/182
execute if entity @s[scores={trigger=182}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGCarrot=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=182}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=182}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=182}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=182}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 183 Assassin | Gold x7 to Evoker [A]
execute if entity @s[scores={trigger=183}] run tag @e[type=armor_stand,tag=charA,tag=assassin] add charT
execute if entity @s[scores={trigger=183}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=183}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=183}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=183}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=183}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=7..}] run function glarth:dialogue/assassin/triggers/183
execute if entity @s[scores={trigger=183}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..6}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=183}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 184 TTEXTT | Pigstep to Diamond Helmet [A]
execute if entity @s[scores={trigger=184}] run tag @e[type=armor_stand,tag=charA,tag=ttextt] add charT
execute if entity @s[scores={trigger=184}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=184}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iDisc2=1..}] run function glarth:dialogue/ttextt/triggers/184
execute if entity @s[scores={trigger=184}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] if entity @s[scores={iDisc2=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=184}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=184}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=184}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=184}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 185 Trader | Iron x2 to Golden Helmet [A]
execute if entity @s[scores={trigger=185}] run tag @e[type=armor_stand,tag=charA,tag=trader] add charT
execute if entity @s[scores={trigger=185}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=185}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=185}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=185}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=185}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iIron=2..}] run function glarth:dialogue/trader/triggers/185
execute if entity @s[scores={trigger=185}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iIron=..1}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=185}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 186 Miner Chief | Gold x10 to Diamond [B]
execute if entity @s[scores={trigger=186}] run tag @e[type=armor_stand,tag=charA,tag=miner_chief] add charT
execute if entity @s[scores={trigger=186}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=186}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iGold=10..}] run function glarth:dialogue/miner_chief/triggers/186
execute if entity @s[scores={trigger=186}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iTnt=..9}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=186}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=186}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=186}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=186}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 187 Baker | Gold x3 to Pumpkin Pie
execute if entity @s[scores={trigger=187}] run tag @e[type=armor_stand,tag=charA,tag=baker] add charT
execute if entity @s[scores={trigger=187}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=3..}] run function glarth:dialogue/baker/triggers/187
execute if entity @s[scores={trigger=187}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10] if entity @s[scores={iGold=..2}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=187}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=187}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=187}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=187}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#188 Carrot Lover | Dialogue [A]
execute if entity @s[scores={trigger=188}] run tag @e[type=armor_stand,tag=charA,tag=carrot] add charT
execute if entity @s[scores={trigger=188}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=188}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] run function glarth:dialogue/carrot/triggers/188
execute if entity @s[scores={trigger=188}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=188}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=188}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=188}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#189 Carrot Lover | Dialogue [B]
execute if entity @s[scores={trigger=189}] run tag @e[type=armor_stand,tag=charA,tag=carrot] add charT
execute if entity @s[scores={trigger=189}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=b] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=189}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!b] run function glarth:dialogue/carrot/triggers/189
execute if entity @s[scores={trigger=189}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=189}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=189}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=189}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
#190 Carrot Lover | Dialogue [C]
execute if entity @s[scores={trigger=190}] run tag @e[type=armor_stand,tag=charA,tag=carrot] add charT
execute if entity @s[scores={trigger=190}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=c] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=190}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] if entity @s[scores={iArrow=3..,iBow=1..,iSkull=1..}] run function glarth:dialogue/carrot/triggers/190
execute if entity @s[scores={trigger=190}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!c] unless entity @s[scores={iArrow=3..,iBow=1..,iSkull=1..}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=190}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=190}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=190}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=190}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
# 191 Assassin | Gold x7 to Richard [A]
execute if entity @s[scores={trigger=191}] run tag @e[type=armor_stand,tag=charA,tag=assassin] add charT
execute if entity @s[scores={trigger=191}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=191}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=191}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=191}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=191}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=7..}] run function glarth:dialogue/assassin/triggers/191
execute if entity @s[scores={trigger=191}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iGold=..6}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=191}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
# 192 Uncle | RPotion to Win [A]
execute if entity @s[scores={trigger=192}] run tag @e[type=armor_stand,tag=charA,tag=uncle] add charT
execute if entity @s[scores={trigger=192}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=192}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=192}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=192}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown
execute if entity @s[scores={trigger=192}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRPotion=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=192}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iRPotion=1..}] run function glarth:dialogue/uncle/triggers/192
#193 Boy | Orange Tulip to Sugar [A]
execute if entity @s[scores={trigger=193}] run tag @e[type=armor_stand,tag=charA,tag=brother] add charT
execute if entity @s[scores={trigger=193}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=a] run function glarth:dialogue/invalid_done
execute if entity @s[scores={trigger=193}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iOTulip=1..}] run function glarth:dialogue/brother/triggers/193
execute if entity @s[scores={trigger=193}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=..10,tag=!a] if entity @s[scores={iOTulip=..0}] run function glarth:dialogue/invalid_item
execute if entity @s[scores={trigger=193}] if entity @e[type=armor_stand,tag=charT,tag=char,distance=10..] run function glarth:dialogue/invalid_distance
execute if entity @s[scores={trigger=193}] unless entity @e[type=armor_stand,tag=charT] run function glarth:dialogue/invalid_trigger
execute if entity @s[scores={trigger=193}] if entity @e[type=armor_stand,tag=charT,tag=deadChar] run function glarth:dialogue/invalid_dead
execute if entity @s[scores={trigger=193}] if entity @e[type=armor_stand,tag=charT,tag=!deadChar,tag=!char] run function glarth:dialogue/invalid_unknown

##
## END
##
tag @e[tag=char,type=armor_stand] remove charT
execute if score game Stats matches 1 run scoreboard players enable @s trigger
execute as @s[scores={trigger=1..}] run scoreboard players add traded PlayStats 1
scoreboard players set @s trigger 0
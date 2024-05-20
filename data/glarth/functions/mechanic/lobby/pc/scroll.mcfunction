# Reset
execute as @e[tag=lobbyScreenA] run data modify entity @s ArmorItems[3].components.minecraft:custom_model_data set value 0

# Verify
execute if score height pcScroll matches ..-1 run scoreboard players set height pcScroll 0
execute if score height pcScroll matches 253.. run scoreboard players set height pcScroll 252


# Calc Values
scoreboard players operation modelAS pcScroll = height pcScroll
scoreboard players operation modelAS pcScroll %= 23 Const
scoreboard players operation modelCMD pcScroll = height pcScroll
scoreboard players operation modelCMD pcScroll /= 23 Const
scoreboard players add modelCMD pcScroll 1

# Set CMD & AS
execute if score modelAS pcScroll matches 00 as @e[type=armor_stand,tag=lobbyScreenA00,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 01 as @e[type=armor_stand,tag=lobbyScreenA01,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 02 as @e[type=armor_stand,tag=lobbyScreenA02,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 03 as @e[type=armor_stand,tag=lobbyScreenA03,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 04 as @e[type=armor_stand,tag=lobbyScreenA04,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 05 as @e[type=armor_stand,tag=lobbyScreenA05,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 06 as @e[type=armor_stand,tag=lobbyScreenA06,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 07 as @e[type=armor_stand,tag=lobbyScreenA07,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 08 as @e[type=armor_stand,tag=lobbyScreenA08,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 09 as @e[type=armor_stand,tag=lobbyScreenA09,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 10 as @e[type=armor_stand,tag=lobbyScreenA10,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 11 as @e[type=armor_stand,tag=lobbyScreenA11,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 12 as @e[type=armor_stand,tag=lobbyScreenA12,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 13 as @e[type=armor_stand,tag=lobbyScreenA13,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 14 as @e[type=armor_stand,tag=lobbyScreenA14,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 15 as @e[type=armor_stand,tag=lobbyScreenA15,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 16 as @e[type=armor_stand,tag=lobbyScreenA16,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 17 as @e[type=armor_stand,tag=lobbyScreenA17,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 18 as @e[type=armor_stand,tag=lobbyScreenA18,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 19 as @e[type=armor_stand,tag=lobbyScreenA19,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 20 as @e[type=armor_stand,tag=lobbyScreenA20,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 21 as @e[type=armor_stand,tag=lobbyScreenA21,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll
execute if score modelAS pcScroll matches 22 as @e[type=armor_stand,tag=lobbyScreenA22,limit=1] store result entity @s ArmorItems[3].components.minecraft:custom_model_data int 1 run scoreboard players get modelCMD pcScroll

# Scroll Bar
execute if score height pcScroll matches 0 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 25 ~
execute if score height pcScroll matches 1 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9979792881438 ~
execute if score height pcScroll matches 2 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9959585762876 ~
execute if score height pcScroll matches 3 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9939378644314 ~
execute if score height pcScroll matches 4 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9919171525752 ~
execute if score height pcScroll matches 5 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.989896440719 ~
execute if score height pcScroll matches 6 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9878757288628 ~
execute if score height pcScroll matches 7 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9858550170066 ~
execute if score height pcScroll matches 8 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9838343051504 ~
execute if score height pcScroll matches 9 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9818135932942 ~
execute if score height pcScroll matches 10 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.979792881438 ~
execute if score height pcScroll matches 11 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9777721695818 ~
execute if score height pcScroll matches 12 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9757514577256 ~
execute if score height pcScroll matches 13 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9737307458694 ~
execute if score height pcScroll matches 14 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9717100340132 ~
execute if score height pcScroll matches 15 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9696893221569 ~
execute if score height pcScroll matches 16 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9676686103007 ~
execute if score height pcScroll matches 17 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9656478984445 ~
execute if score height pcScroll matches 18 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9636271865883 ~
execute if score height pcScroll matches 19 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9616064747321 ~
execute if score height pcScroll matches 20 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9595857628759 ~
execute if score height pcScroll matches 21 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9575650510197 ~
execute if score height pcScroll matches 22 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9555443391635 ~
execute if score height pcScroll matches 23 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9535236273073 ~
execute if score height pcScroll matches 24 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9515029154511 ~
execute if score height pcScroll matches 25 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9494822035949 ~
execute if score height pcScroll matches 26 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9474614917387 ~
execute if score height pcScroll matches 27 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9454407798825 ~
execute if score height pcScroll matches 28 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9434200680263 ~
execute if score height pcScroll matches 29 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9413993561701 ~
execute if score height pcScroll matches 30 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9393786443139 ~
execute if score height pcScroll matches 31 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9373579324577 ~
execute if score height pcScroll matches 32 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9353372206015 ~
execute if score height pcScroll matches 33 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9333165087453 ~
execute if score height pcScroll matches 34 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9312957968891 ~
execute if score height pcScroll matches 35 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9292750850329 ~
execute if score height pcScroll matches 36 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9272543731767 ~
execute if score height pcScroll matches 37 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9252336613205 ~
execute if score height pcScroll matches 38 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9232129494643 ~
execute if score height pcScroll matches 39 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9211922376081 ~
execute if score height pcScroll matches 40 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9191715257519 ~
execute if score height pcScroll matches 41 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9171508138957 ~
execute if score height pcScroll matches 42 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9151301020395 ~
execute if score height pcScroll matches 43 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9131093901832 ~
execute if score height pcScroll matches 44 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.911088678327 ~
execute if score height pcScroll matches 45 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9090679664708 ~
execute if score height pcScroll matches 46 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9070472546146 ~
execute if score height pcScroll matches 47 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9050265427584 ~
execute if score height pcScroll matches 48 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.9030058309022 ~
execute if score height pcScroll matches 49 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.900985119046 ~
execute if score height pcScroll matches 50 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8989644071898 ~
execute if score height pcScroll matches 51 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8969436953336 ~
execute if score height pcScroll matches 52 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8949229834774 ~
execute if score height pcScroll matches 53 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8929022716212 ~
execute if score height pcScroll matches 54 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.890881559765 ~
execute if score height pcScroll matches 55 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8888608479088 ~
execute if score height pcScroll matches 56 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8868401360526 ~
execute if score height pcScroll matches 57 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8848194241964 ~
execute if score height pcScroll matches 58 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8827987123402 ~
execute if score height pcScroll matches 59 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.880778000484 ~
execute if score height pcScroll matches 60 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8787572886278 ~
execute if score height pcScroll matches 61 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8767365767716 ~
execute if score height pcScroll matches 62 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8747158649154 ~
execute if score height pcScroll matches 63 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8726951530592 ~
execute if score height pcScroll matches 64 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.870674441203 ~
execute if score height pcScroll matches 65 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8686537293468 ~
execute if score height pcScroll matches 66 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8666330174906 ~
execute if score height pcScroll matches 67 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8646123056344 ~
execute if score height pcScroll matches 68 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8625915937782 ~
execute if score height pcScroll matches 69 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.860570881922 ~
execute if score height pcScroll matches 70 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8585501700658 ~
execute if score height pcScroll matches 71 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8565294582095 ~
execute if score height pcScroll matches 72 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8545087463533 ~
execute if score height pcScroll matches 73 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8524880344971 ~
execute if score height pcScroll matches 74 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8504673226409 ~
execute if score height pcScroll matches 75 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8484466107847 ~
execute if score height pcScroll matches 76 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8464258989285 ~
execute if score height pcScroll matches 77 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8444051870723 ~
execute if score height pcScroll matches 78 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8423844752161 ~
execute if score height pcScroll matches 79 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8403637633599 ~
execute if score height pcScroll matches 80 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8383430515037 ~
execute if score height pcScroll matches 81 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8363223396475 ~
execute if score height pcScroll matches 82 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8343016277913 ~
execute if score height pcScroll matches 83 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8322809159351 ~
execute if score height pcScroll matches 84 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8302602040789 ~
execute if score height pcScroll matches 85 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8282394922227 ~
execute if score height pcScroll matches 86 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8262187803665 ~
execute if score height pcScroll matches 87 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8241980685103 ~
execute if score height pcScroll matches 88 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8221773566541 ~
execute if score height pcScroll matches 89 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8201566447979 ~
execute if score height pcScroll matches 90 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8181359329417 ~
execute if score height pcScroll matches 91 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8161152210855 ~
execute if score height pcScroll matches 92 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8140945092293 ~
execute if score height pcScroll matches 93 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8120737973731 ~
execute if score height pcScroll matches 94 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8100530855169 ~
execute if score height pcScroll matches 95 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8080323736607 ~
execute if score height pcScroll matches 96 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8060116618045 ~
execute if score height pcScroll matches 97 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8039909499483 ~
execute if score height pcScroll matches 98 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.8019702380921 ~
execute if score height pcScroll matches 99 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7999495262358 ~
execute if score height pcScroll matches 100 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7979288143796 ~
execute if score height pcScroll matches 101 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7959081025234 ~
execute if score height pcScroll matches 102 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7938873906672 ~
execute if score height pcScroll matches 103 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.791866678811 ~
execute if score height pcScroll matches 104 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7898459669548 ~
execute if score height pcScroll matches 105 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7878252550986 ~
execute if score height pcScroll matches 106 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7858045432424 ~
execute if score height pcScroll matches 107 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7837838313862 ~
execute if score height pcScroll matches 108 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.78176311953 ~
execute if score height pcScroll matches 109 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7797424076738 ~
execute if score height pcScroll matches 110 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7777216958176 ~
execute if score height pcScroll matches 111 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7757009839614 ~
execute if score height pcScroll matches 112 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7736802721052 ~
execute if score height pcScroll matches 113 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.771659560249 ~
execute if score height pcScroll matches 114 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7696388483928 ~
execute if score height pcScroll matches 115 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7676181365366 ~
execute if score height pcScroll matches 116 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7655974246804 ~
execute if score height pcScroll matches 117 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7635767128242 ~
execute if score height pcScroll matches 118 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.761556000968 ~
execute if score height pcScroll matches 119 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7595352891118 ~
execute if score height pcScroll matches 120 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7575145772556 ~
execute if score height pcScroll matches 121 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7554938653994 ~
execute if score height pcScroll matches 122 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7534731535432 ~
execute if score height pcScroll matches 123 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.751452441687 ~
execute if score height pcScroll matches 124 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7494317298308 ~
execute if score height pcScroll matches 125 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7474110179746 ~
execute if score height pcScroll matches 126 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7453903061184 ~
execute if score height pcScroll matches 127 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7433695942622 ~
execute if score height pcScroll matches 128 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7413488824059 ~
execute if score height pcScroll matches 129 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7393281705497 ~
execute if score height pcScroll matches 130 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7373074586935 ~
execute if score height pcScroll matches 131 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7352867468373 ~
execute if score height pcScroll matches 132 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7332660349811 ~
execute if score height pcScroll matches 133 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7312453231249 ~
execute if score height pcScroll matches 134 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7292246112687 ~
execute if score height pcScroll matches 135 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7272038994125 ~
execute if score height pcScroll matches 136 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7251831875563 ~
execute if score height pcScroll matches 137 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7231624757001 ~
execute if score height pcScroll matches 138 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7211417638439 ~
execute if score height pcScroll matches 139 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7191210519877 ~
execute if score height pcScroll matches 140 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7171003401315 ~
execute if score height pcScroll matches 141 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7150796282753 ~
execute if score height pcScroll matches 142 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7130589164191 ~
execute if score height pcScroll matches 143 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7110382045629 ~
execute if score height pcScroll matches 144 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7090174927067 ~
execute if score height pcScroll matches 145 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7069967808505 ~
execute if score height pcScroll matches 146 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7049760689943 ~
execute if score height pcScroll matches 147 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7029553571381 ~
execute if score height pcScroll matches 148 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.7009346452819 ~
execute if score height pcScroll matches 149 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6989139334257 ~
execute if score height pcScroll matches 150 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6968932215695 ~
execute if score height pcScroll matches 151 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6948725097133 ~
execute if score height pcScroll matches 152 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6928517978571 ~
execute if score height pcScroll matches 153 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6908310860009 ~
execute if score height pcScroll matches 154 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6888103741447 ~
execute if score height pcScroll matches 155 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6867896622884 ~
execute if score height pcScroll matches 156 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6847689504322 ~
execute if score height pcScroll matches 157 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.682748238576 ~
execute if score height pcScroll matches 158 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6807275267198 ~
execute if score height pcScroll matches 159 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6787068148636 ~
execute if score height pcScroll matches 160 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6766861030074 ~
execute if score height pcScroll matches 161 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6746653911512 ~
execute if score height pcScroll matches 162 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.672644679295 ~
execute if score height pcScroll matches 163 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6706239674388 ~
execute if score height pcScroll matches 164 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6686032555826 ~
execute if score height pcScroll matches 165 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6665825437264 ~
execute if score height pcScroll matches 166 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6645618318702 ~
execute if score height pcScroll matches 167 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.662541120014 ~
execute if score height pcScroll matches 168 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6605204081578 ~
execute if score height pcScroll matches 169 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6584996963016 ~
execute if score height pcScroll matches 170 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6564789844454 ~
execute if score height pcScroll matches 171 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6544582725892 ~
execute if score height pcScroll matches 172 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.652437560733 ~
execute if score height pcScroll matches 173 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6504168488768 ~
execute if score height pcScroll matches 174 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6483961370206 ~
execute if score height pcScroll matches 175 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6463754251644 ~
execute if score height pcScroll matches 176 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6443547133082 ~
execute if score height pcScroll matches 177 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.642334001452 ~
execute if score height pcScroll matches 178 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6403132895958 ~
execute if score height pcScroll matches 179 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6382925777396 ~
execute if score height pcScroll matches 180 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6362718658834 ~
execute if score height pcScroll matches 181 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6342511540272 ~
execute if score height pcScroll matches 182 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.632230442171 ~
execute if score height pcScroll matches 183 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6302097303147 ~
execute if score height pcScroll matches 184 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6281890184585 ~
execute if score height pcScroll matches 185 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6261683066023 ~
execute if score height pcScroll matches 186 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6241475947461 ~
execute if score height pcScroll matches 187 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6221268828899 ~
execute if score height pcScroll matches 188 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6201061710337 ~
execute if score height pcScroll matches 189 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6180854591775 ~
execute if score height pcScroll matches 190 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6160647473213 ~
execute if score height pcScroll matches 191 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6140440354651 ~
execute if score height pcScroll matches 192 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6120233236089 ~
execute if score height pcScroll matches 193 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6100026117527 ~
execute if score height pcScroll matches 194 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6079818998965 ~
execute if score height pcScroll matches 195 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6059611880403 ~
execute if score height pcScroll matches 196 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6039404761841 ~
execute if score height pcScroll matches 197 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.6019197643279 ~
execute if score height pcScroll matches 198 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5998990524717 ~
execute if score height pcScroll matches 199 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5978783406155 ~
execute if score height pcScroll matches 200 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5958576287593 ~
execute if score height pcScroll matches 201 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5938369169031 ~
execute if score height pcScroll matches 202 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5918162050469 ~
execute if score height pcScroll matches 203 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5897954931907 ~
execute if score height pcScroll matches 204 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5877747813345 ~
execute if score height pcScroll matches 205 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5857540694783 ~
execute if score height pcScroll matches 206 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5837333576221 ~
execute if score height pcScroll matches 207 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5817126457659 ~
execute if score height pcScroll matches 208 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5796919339097 ~
execute if score height pcScroll matches 209 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5776712220535 ~
execute if score height pcScroll matches 210 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5756505101973 ~
execute if score height pcScroll matches 211 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.573629798341 ~
execute if score height pcScroll matches 212 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5716090864848 ~
execute if score height pcScroll matches 213 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5695883746286 ~
execute if score height pcScroll matches 214 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5675676627724 ~
execute if score height pcScroll matches 215 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5655469509162 ~
execute if score height pcScroll matches 216 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.56352623906 ~
execute if score height pcScroll matches 217 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5615055272038 ~
execute if score height pcScroll matches 218 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5594848153476 ~
execute if score height pcScroll matches 219 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5574641034914 ~
execute if score height pcScroll matches 220 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5554433916352 ~
execute if score height pcScroll matches 221 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.553422679779 ~
execute if score height pcScroll matches 222 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5514019679228 ~
execute if score height pcScroll matches 223 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5493812560666 ~
execute if score height pcScroll matches 224 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5473605442104 ~
execute if score height pcScroll matches 225 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5453398323542 ~
execute if score height pcScroll matches 226 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.543319120498 ~
execute if score height pcScroll matches 227 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5412984086418 ~
execute if score height pcScroll matches 228 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5392776967856 ~
execute if score height pcScroll matches 229 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5372569849294 ~
execute if score height pcScroll matches 230 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5352362730732 ~
execute if score height pcScroll matches 231 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.533215561217 ~
execute if score height pcScroll matches 232 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5311948493608 ~
execute if score height pcScroll matches 233 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5291741375046 ~
execute if score height pcScroll matches 234 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5271534256484 ~
execute if score height pcScroll matches 235 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5251327137922 ~
execute if score height pcScroll matches 236 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.523112001936 ~
execute if score height pcScroll matches 237 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5210912900798 ~
execute if score height pcScroll matches 238 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5190705782236 ~
execute if score height pcScroll matches 239 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5170498663673 ~
execute if score height pcScroll matches 240 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5150291545111 ~
execute if score height pcScroll matches 241 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5130084426549 ~
execute if score height pcScroll matches 242 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5109877307987 ~
execute if score height pcScroll matches 243 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5089670189425 ~
execute if score height pcScroll matches 244 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5069463070863 ~
execute if score height pcScroll matches 245 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5049255952301 ~
execute if score height pcScroll matches 246 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5029048833739 ~
execute if score height pcScroll matches 247 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.5008841715177 ~
execute if score height pcScroll matches 248 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.4988634596615 ~
execute if score height pcScroll matches 249 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.4968427478053 ~
execute if score height pcScroll matches 250 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.4948220359491 ~
execute if score height pcScroll matches 251 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.4928013240929 ~
execute if score height pcScroll matches 252 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.4907806122367 ~
execute if score height pcScroll matches 253 as @e[type=armor_stand,tag=lobbyScreenBar1,limit=1] at @s run tp @s ~ 24.4887599003805 ~
scoreboard players add @s Animation 2

execute as @e[tag=tower_lower,scores={Animation=2}] run particle dust 0 0 0 100 -6 39 -185 1.5 4 1.5 0.5 1000
execute as @e[tag=tower_lower,scores={Animation=4}] unless entity @e[tag=tower_upper] run summon minecraft:armor_stand -5.5 40.55 -182.5 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":142}}],NoGravity:1,Marker:1,Rotation:[180.0f,0.0f],Tags:["tower_upperS"]}
execute as @e[tag=tower_lower,scores={Animation=4}] run data merge entity @s {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":143}}]}
execute as @e[tag=tower_lower,scores={Animation=16}] run clone 25 3 -179 19 1 -183 -9 34 -187
execute as @e[tag=tower_lower,scores={Animation=16}] run fill -9 37 -188 -3 50 -182 air
execute as @e[tag=tower_lower,scores={Animation=16}] run scoreboard players set @s Animation 1000
execute as @e[tag=tower_lower,scores={Animation=1010}] run tag @e[tag=tower_upperS] add tower_upper

execute as @e[tag=tower_lower,scores={Animation=1000..1100}] run function glarth:mechanic/animation/tower_debris

tp @s[tag=tower_lower,scores={Animation=1000}] -5.5 34 -186.5
tp @s[tag=tower_lower,scores={Animation=1001}] -5.5 33.9996953903128 -186.534904812875
tp @s[tag=tower_lower,scores={Animation=1002}] -5.5 33.9987816540382 -186.569798993405
tp @s[tag=tower_lower,scores={Animation=1003}] -5.5 33.9972590695092 -186.604671912486
tp @s[tag=tower_lower,scores={Animation=1004}] -5.5 33.9951281005197 -186.639512947488
tp @s[tag=tower_lower,scores={Animation=1005}] -5.5 33.9923893961835 -186.674311485495
tp @s[tag=tower_lower,scores={Animation=1006}] -5.5 33.9890437907365 -186.709056926535
tp @s[tag=tower_lower,scores={Animation=1007}] -5.5 33.9850923032826 -186.74373868681
tp @s[tag=tower_lower,scores={Animation=1008}] -5.5 33.9805361374831 -186.77834620192
tp @s[tag=tower_lower,scores={Animation=1009}] -5.5 33.9753766811903 -186.81286893008
tp @s[tag=tower_lower,scores={Animation=1010}] -5.5 33.9696155060244 -186.847296355334
tp @s[tag=tower_lower,scores={Animation=1011}] -5.5 33.9632543668953 -186.881617990753
tp @s[tag=tower_lower,scores={Animation=1012}] -5.5 33.9562952014676 -186.915823381636
tp @s[tag=tower_lower,scores={Animation=1013}] -5.5 33.9487401295705 -186.949902108688
tp @s[tag=tower_lower,scores={Animation=1014}] -5.5 33.940591452552 -186.983843791199
tp @s[tag=tower_lower,scores={Animation=1015}] -5.5 33.9318516525781 -187.017638090205
tp @s[tag=tower_lower,scores={Animation=1016}] -5.5 33.9225233918766 -187.051274711634
tp @s[tag=tower_lower,scores={Animation=1017}] -5.5 33.9126095119261 -187.084743409445
tp @s[tag=tower_lower,scores={Animation=1018}] -5.5 33.9021130325903 -187.11803398875
tp @s[tag=tower_lower,scores={Animation=1019}] -5.5 33.8910371511986 -187.151136308914
tp @s[tag=tower_lower,scores={Animation=1020}] -5.5 33.8793852415718 -187.184040286651
tp @s[tag=tower_lower,scores={Animation=1021}] -5.5 33.8671608529944 -187.216735899091
tp @s[tag=tower_lower,scores={Animation=1022}] -5.5 33.8543677091336 -187.249213186832
tp @s[tag=tower_lower,scores={Animation=1023}] -5.5 33.8410097069049 -187.281462256979
tp @s[tag=tower_lower,scores={Animation=1024}] -5.5 33.8270909152852 -187.313473286152
tp @s[tag=tower_lower,scores={Animation=1025}] -5.5 33.8126155740733 -187.345236523481
tp @s[tag=tower_lower,scores={Animation=1026}] -5.5 33.7975880925983 -187.376742293578
tp @s[tag=tower_lower,scores={Animation=1027}] -5.5 33.7820130483767 -187.407980999479
tp @s[tag=tower_lower,scores={Animation=1028}] -5.5 33.7658951857179 -187.438943125572
tp @s[tag=tower_lower,scores={Animation=1029}] -5.5 33.7492394142788 -187.469619240493
tp @s[tag=tower_lower,scores={Animation=1030}] -5.5 33.7320508075689 -187.5
tp @s[tag=tower_lower,scores={Animation=1031}] -5.5 33.7143346014042 -187.53007614982
tp @s[tag=tower_lower,scores={Animation=1032}] -5.5 33.6960961923129 -187.559838528466
tp @s[tag=tower_lower,scores={Animation=1033}] -5.5 33.6773411358909 -187.58927807003
tp @s[tag=tower_lower,scores={Animation=1034}] -5.5 33.6580751451101 -187.618385806942
tp @s[tag=tower_lower,scores={Animation=1035}] -5.5 33.638304088578 -187.647152872702
tp @s[tag=tower_lower,scores={Animation=1036}] -5.5 33.6180339887499 -187.675570504585
tp @s[tag=tower_lower,scores={Animation=1037}] -5.5 33.5972710200946 -187.703630046304
tp @s[tag=tower_lower,scores={Animation=1038}] -5.5 33.5760215072135 -187.731322950651
tp @s[tag=tower_lower,scores={Animation=1039}] -5.5 33.5542919229139 -187.7586407821
tp @s[tag=tower_lower,scores={Animation=1040}] -5.5 33.532088886238 -187.785575219373
tp @s[tag=tower_lower,scores={Animation=1041}] -5.5 33.5094191604455 -187.812118057981
tp @s[tag=tower_lower,scores={Animation=1042}] -5.5 33.4862896509548 -187.838261212718
tp @s[tag=tower_lower,scores={Animation=1043}] -5.5 33.4627074032383 -187.863996720125
tp @s[tag=tower_lower,scores={Animation=1044}] -5.5 33.4386796006773 -187.889316740918
tp @s[tag=tower_lower,scores={Animation=1045}] -5.5 33.4142135623731 -187.914213562373
tp @s[tag=tower_lower,scores={Animation=1046}] -5.5 33.389316740918 -187.938679600677
tp @s[tag=tower_lower,scores={Animation=1047}] -5.5 33.363996720125 -187.962707403238
tp @s[tag=tower_lower,scores={Animation=1048}] -5.5 33.3382612127177 -187.986289650955
tp @s[tag=tower_lower,scores={Animation=1049}] -5.5 33.312118057981 -188.009419160446
tp @s[tag=tower_lower,scores={Animation=1050}] -5.5 33.2855752193731 -188.032088886238
tp @s[tag=tower_lower,scores={Animation=1051}] -5.5 33.2586407820997 -188.054291922914
tp @s[tag=tower_lower,scores={Animation=1052}] -5.5 33.2313229506513 -188.076021507213
tp @s[tag=tower_lower,scores={Animation=1053}] -5.5 33.2036300463041 -188.097271020095
tp @s[tag=tower_lower,scores={Animation=1054}] -5.5 33.175570504585 -188.11803398875
tp @s[tag=tower_lower,scores={Animation=1055}] -5.5 33.1471528727021 -188.138304088578
tp @s[tag=tower_lower,scores={Animation=1056}] -5.5 33.1183858069415 -188.15807514511
tp @s[tag=tower_lower,scores={Animation=1057}] -5.5 33.0892780700301 -188.177341135891
tp @s[tag=tower_lower,scores={Animation=1058}] -5.5 33.0598385284664 -188.196096192313
tp @s[tag=tower_lower,scores={Animation=1059}] -5.5 33.0300761498201 -188.214334601404
tp @s[tag=tower_lower,scores={Animation=1060}] -5.5 33 -188.232050807569
tp @s[tag=tower_lower,scores={Animation=1061}] -5.5 32.9696192404927 -188.249239414279
tp @s[tag=tower_lower,scores={Animation=1062}] -5.5 32.9389431255718 -188.265895185718
tp @s[tag=tower_lower,scores={Animation=1063}] -5.5 32.9079809994791 -188.282013048377
tp @s[tag=tower_lower,scores={Animation=1064}] -5.5 32.8767422935782 -188.297588092598
tp @s[tag=tower_lower,scores={Animation=1065}] -5.5 32.8452365234814 -188.312615574073
tp @s[tag=tower_lower,scores={Animation=1066}] -5.5 32.8134732861516 -188.327090915285
tp @s[tag=tower_lower,scores={Animation=1067}] -5.5 32.7814622569786 -188.341009706905
tp @s[tag=tower_lower,scores={Animation=1068}] -5.5 32.7492131868318 -188.354367709134
tp @s[tag=tower_lower,scores={Animation=1069}] -5.5 32.7167358990906 -188.367160852994
tp @s[tag=tower_lower,scores={Animation=1070}] -5.5 32.6840402866513 -188.379385241572
tp @s[tag=tower_lower,scores={Animation=1071}] -5.5 32.6511363089143 -188.391037151199
tp @s[tag=tower_lower,scores={Animation=1072}] -5.5 32.6180339887499 -188.40211303259
tp @s[tag=tower_lower,scores={Animation=1073}] -5.5 32.5847434094455 -188.412609511926
tp @s[tag=tower_lower,scores={Animation=1074}] -5.5 32.551274711634 -188.422523391877
tp @s[tag=tower_lower,scores={Animation=1075}] -5.5 32.517638090205 -188.431851652578
tp @s[tag=tower_lower,scores={Animation=1076}] -5.5 32.4838437911993 -188.440591452552
tp @s[tag=tower_lower,scores={Animation=1077}] -5.5 32.4499021086877 -188.44874012957
tp @s[tag=tower_lower,scores={Animation=1078}] -5.5 32.4158233816355 -188.456295201468
tp @s[tag=tower_lower,scores={Animation=1079}] -5.5 32.3816179907531 -188.463254366895
tp @s[tag=tower_lower,scores={Animation=1080}] -5.5 32.3472963553339 -188.469615506024
data merge entity @s[tag=tower_lower,scores={Animation=1000}] {Pose:{Head:[0.0f,0.0f,-0.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1001}] {Pose:{Head:[0.5f,0.0f,-1.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1002}] {Pose:{Head:[1.0f,0.0f,-2.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1003}] {Pose:{Head:[1.5f,0.0f,-3.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1004}] {Pose:{Head:[2.0f,0.0f,-4.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1005}] {Pose:{Head:[2.5f,0.0f,-5.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1006}] {Pose:{Head:[3.0f,0.0f,-6.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1007}] {Pose:{Head:[3.5f,0.0f,-7.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1008}] {Pose:{Head:[4.0f,0.0f,-9.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1009}] {Pose:{Head:[4.5f,0.0f,-10.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1010}] {Pose:{Head:[5.0f,0.0f,-11.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1011}] {Pose:{Head:[5.5f,0.0f,-12.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1012}] {Pose:{Head:[6.0f,0.0f,-13.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1013}] {Pose:{Head:[6.5f,0.0f,-14.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1014}] {Pose:{Head:[7.0f,0.0f,-15.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1015}] {Pose:{Head:[7.5f,0.0f,-16.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1016}] {Pose:{Head:[8.0f,0.0f,-18.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1017}] {Pose:{Head:[8.5f,0.0f,-19.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1018}] {Pose:{Head:[9.0f,0.0f,-20.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1019}] {Pose:{Head:[9.5f,0.0f,-21.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1020}] {Pose:{Head:[10.0f,0.0f,-22.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1021}] {Pose:{Head:[10.5f,0.0f,-23.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1022}] {Pose:{Head:[11.0f,0.0f,-24.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1023}] {Pose:{Head:[11.5f,0.0f,-25.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1024}] {Pose:{Head:[12.0f,0.0f,-27.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1025}] {Pose:{Head:[12.5f,0.0f,-28.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1026}] {Pose:{Head:[13.0f,0.0f,-29.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1027}] {Pose:{Head:[13.5f,0.0f,-30.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1028}] {Pose:{Head:[14.0f,0.0f,-31.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1029}] {Pose:{Head:[14.5f,0.0f,-32.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1030}] {Pose:{Head:[15.0f,0.0f,-33.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1031}] {Pose:{Head:[15.5f,0.0f,-34.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1032}] {Pose:{Head:[16.0f,0.0f,-36.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1033}] {Pose:{Head:[16.5f,0.0f,-37.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1034}] {Pose:{Head:[17.0f,0.0f,-38.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1035}] {Pose:{Head:[17.5f,0.0f,-39.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1036}] {Pose:{Head:[18.0f,0.0f,-40.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1037}] {Pose:{Head:[18.5f,0.0f,-41.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1038}] {Pose:{Head:[19.0f,0.0f,-42.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1039}] {Pose:{Head:[19.5f,0.0f,-43.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1040}] {Pose:{Head:[20.0f,0.0f,-45.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1041}] {Pose:{Head:[20.5f,0.0f,-46.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1042}] {Pose:{Head:[21.0f,0.0f,-47.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1043}] {Pose:{Head:[21.5f,0.0f,-48.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1044}] {Pose:{Head:[22.0f,0.0f,-49.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1045}] {Pose:{Head:[22.5f,0.0f,-50.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1046}] {Pose:{Head:[23.0f,0.0f,-51.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1047}] {Pose:{Head:[23.5f,0.0f,-52.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1048}] {Pose:{Head:[24.0f,0.0f,-54.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1049}] {Pose:{Head:[24.5f,0.0f,-55.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1050}] {Pose:{Head:[25.0f,0.0f,-56.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1051}] {Pose:{Head:[25.5f,0.0f,-57.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1052}] {Pose:{Head:[26.0f,0.0f,-58.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1053}] {Pose:{Head:[26.5f,0.0f,-59.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1054}] {Pose:{Head:[27.0f,0.0f,-60.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1055}] {Pose:{Head:[27.5f,0.0f,-61.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1056}] {Pose:{Head:[28.0f,0.0f,-63.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1057}] {Pose:{Head:[28.5f,0.0f,-64.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1058}] {Pose:{Head:[29.0f,0.0f,-65.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1059}] {Pose:{Head:[29.5f,0.0f,-66.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1060}] {Pose:{Head:[30.0f,0.0f,-67.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1061}] {Pose:{Head:[30.5f,0.0f,-68.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1062}] {Pose:{Head:[31.0f,0.0f,-69.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1063}] {Pose:{Head:[31.5f,0.0f,-70.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1064}] {Pose:{Head:[32.0f,0.0f,-72.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1065}] {Pose:{Head:[32.5f,0.0f,-73.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1066}] {Pose:{Head:[33.0f,0.0f,-74.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1067}] {Pose:{Head:[33.5f,0.0f,-75.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1068}] {Pose:{Head:[34.0f,0.0f,-76.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1069}] {Pose:{Head:[34.5f,0.0f,-77.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1070}] {Pose:{Head:[35.0f,0.0f,-78.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1071}] {Pose:{Head:[35.5f,0.0f,-79.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1072}] {Pose:{Head:[36.0f,0.0f,-81.0f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1073}] {Pose:{Head:[36.5f,0.0f,-82.125f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1074}] {Pose:{Head:[37.0f,0.0f,-83.25f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1075}] {Pose:{Head:[37.5f,0.0f,-84.375f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1076}] {Pose:{Head:[38.0f,0.0f,-85.5f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1077}] {Pose:{Head:[38.5f,0.0f,-86.625f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1078}] {Pose:{Head:[39.0f,0.0f,-87.75f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1079}] {Pose:{Head:[39.5f,0.0f,-88.875f]}}
data merge entity @s[tag=tower_lower,scores={Animation=1080}] {Pose:{Head:[40.0f,0.0f,-90.0f]}}

tp @e[tag=tower_lower,scores={Animation=1081}] -5.5 32.3472963553339 -188.469615506024 180 0
tp @e[tag=tower_lower,scores={Animation=1082}] -5.42448979591837 32.2268881920686 -188.545125710106 179.795918367347 0
tp @e[tag=tower_lower,scores={Animation=1083}] -5.34897959183674 32.1064800288033 -188.620635914187 179.591836734694 0
tp @e[tag=tower_lower,scores={Animation=1084}] -5.2734693877551 31.986071865538 -188.696146118269 179.387755102041 0
tp @e[tag=tower_lower,scores={Animation=1085}] -5.19795918367347 31.8656637022727 -188.77165632235 179.183673469388 0
tp @e[tag=tower_lower,scores={Animation=1086}] -5.12244897959184 31.7452555390074 -188.847166526432 178.979591836735 0
tp @e[tag=tower_lower,scores={Animation=1087}] -5.0469387755102 31.6248473757421 -188.922676730514 178.775510204082 0
tp @e[tag=tower_lower,scores={Animation=1088}] -4.97142857142857 31.5044392124767 -188.998186934595 178.571428571429 0
tp @e[tag=tower_lower,scores={Animation=1089}] -4.89591836734694 31.3840310492114 -189.073697138677 178.367346938776 0
tp @e[tag=tower_lower,scores={Animation=1090}] -4.82040816326531 31.2636228859461 -189.149207342759 178.163265306122 0
tp @e[tag=tower_lower,scores={Animation=1091}] -4.74489795918367 31.1432147226808 -189.22471754684 177.959183673469 0
tp @e[tag=tower_lower,scores={Animation=1092}] -4.66938775510204 31.0228065594155 -189.300227750922 177.755102040816 0
tp @e[tag=tower_lower,scores={Animation=1093}] -4.59387755102041 30.9023983961502 -189.375737955003 177.551020408163 0
tp @e[tag=tower_lower,scores={Animation=1094}] -4.51836734693878 30.7819902328849 -189.451248159085 177.34693877551 0
tp @e[tag=tower_lower,scores={Animation=1095}] -4.44285714285714 30.6615820696196 -189.526758363167 177.142857142857 0
tp @e[tag=tower_lower,scores={Animation=1096}] -4.36734693877551 30.5411739063543 -189.602268567248 176.938775510204 0
tp @e[tag=tower_lower,scores={Animation=1097}] -4.29183673469388 30.420765743089 -189.67777877133 176.734693877551 0
tp @e[tag=tower_lower,scores={Animation=1098}] -4.21632653061224 30.3003575798237 -189.753288975411 176.530612244898 0
tp @e[tag=tower_lower,scores={Animation=1099}] -4.14081632653061 30.1799494165584 -189.828799179493 176.326530612245 0
tp @e[tag=tower_lower,scores={Animation=1100}] -4.06530612244898 30.059541253293 -189.904309383575 176.122448979592 0
tp @e[tag=tower_lower,scores={Animation=1101}] -3.98979591836735 29.9391330900277 -189.979819587656 175.918367346939 0
tp @e[tag=tower_lower,scores={Animation=1102}] -3.91428571428571 29.8187249267624 -190.055329791738 175.714285714286 0
tp @e[tag=tower_lower,scores={Animation=1103}] -3.83877551020408 29.6983167634971 -190.130839995819 175.510204081633 0
tp @e[tag=tower_lower,scores={Animation=1104}] -3.76326530612245 29.5779086002318 -190.206350199901 175.30612244898 0
tp @e[tag=tower_lower,scores={Animation=1105}] -3.68775510204082 29.4575004369665 -190.281860403983 175.102040816327 0
tp @e[tag=tower_lower,scores={Animation=1106}] -3.61224489795918 29.3370922737012 -190.357370608064 174.897959183673 0
tp @e[tag=tower_lower,scores={Animation=1107}] -3.53673469387755 29.2166841104359 -190.432880812146 174.69387755102 0
tp @e[tag=tower_lower,scores={Animation=1108}] -3.46122448979592 29.0962759471706 -190.508391016228 174.489795918367 0
tp @e[tag=tower_lower,scores={Animation=1109}] -3.38571428571429 28.9758677839053 -190.583901220309 174.285714285714 0
tp @e[tag=tower_lower,scores={Animation=1110}] -3.31020408163265 28.85545962064 -190.659411424391 174.081632653061 0
tp @e[tag=tower_lower,scores={Animation=1111}] -3.23469387755102 28.7350514573747 -190.734921628472 173.877551020408 0
tp @e[tag=tower_lower,scores={Animation=1112}] -3.15918367346939 28.6146432941094 -190.810431832554 173.673469387755 0
tp @e[tag=tower_lower,scores={Animation=1113}] -3.08367346938776 28.494235130844 -190.885942036636 173.469387755102 0
tp @e[tag=tower_lower,scores={Animation=1114}] -3.00816326530612 28.3738269675787 -190.961452240717 173.265306122449 0
tp @e[tag=tower_lower,scores={Animation=1115}] -2.93265306122449 28.2534188043134 -191.036962444799 173.061224489796 0
tp @e[tag=tower_lower,scores={Animation=1116}] -2.85714285714286 28.1330106410481 -191.11247264888 172.857142857143 0
tp @e[tag=tower_lower,scores={Animation=1117}] -2.78163265306122 28.0126024777828 -191.187982852962 172.65306122449 0
tp @e[tag=tower_lower,scores={Animation=1118}] -2.70612244897959 27.8921943145175 -191.263493057044 172.448979591837 0
tp @e[tag=tower_lower,scores={Animation=1119}] -2.63061224489796 27.7717861512522 -191.339003261125 172.244897959184 0
tp @e[tag=tower_lower,scores={Animation=1120}] -2.55510204081633 27.6513779879869 -191.414513465207 172.040816326531 0
tp @e[tag=tower_lower,scores={Animation=1121}] -2.47959183673469 27.5309698247216 -191.490023669289 171.836734693878 0
tp @e[tag=tower_lower,scores={Animation=1122}] -2.40408163265306 27.4105616614563 -191.56553387337 171.632653061225 0
tp @e[tag=tower_lower,scores={Animation=1123}] -2.32857142857143 27.290153498191 -191.641044077452 171.428571428571 0
tp @e[tag=tower_lower,scores={Animation=1124}] -2.2530612244898 27.1697453349257 -191.716554281533 171.224489795918 0
tp @e[tag=tower_lower,scores={Animation=1125}] -2.17755102040816 27.0493371716603 -191.792064485615 171.020408163265 0
tp @e[tag=tower_lower,scores={Animation=1126}] -2.10204081632653 26.928929008395 -191.867574689697 170.816326530612 0
tp @e[tag=tower_lower,scores={Animation=1127}] -2.0265306122449 26.8085208451297 -191.943084893778 170.612244897959 0
tp @e[tag=tower_lower,scores={Animation=1128}] -1.95102040816327 26.6881126818644 -192.01859509786 170.408163265306 0
tp @e[tag=tower_lower,scores={Animation=1129}] -1.87551020408163 26.5677045185991 -192.094105301941 170.204081632653 0
tp @e[tag=tower_lower,scores={Animation=1130}] -1.8 26.4472963553338 -192.169615506023 170 0

execute as @e[tag=tower_lower,scores={Animation=1010}] run summon minecraft:lightning_bolt -5.46 34.37 -185.00
execute as @e[tag=tower_lower,scores={Animation=1020}] run summon minecraft:lightning_bolt -3.60 34.00 -182.53
execute as @e[tag=tower_lower,scores={Animation=1030}] run summon minecraft:lightning_bolt -7.44 35.00 -183.44
execute as @e[tag=tower_lower,scores={Animation=1040}] run summon minecraft:lightning_bolt -5.82 34.00 -186.59
execute as @e[tag=tower_lower,scores={Animation=1016}] run summon minecraft:lightning_bolt -3.60 34.00 -182.53
execute as @e[tag=tower_lower,scores={Animation=1026}] run summon minecraft:lightning_bolt -5.82 34.00 -186.59
execute as @e[tag=tower_lower,scores={Animation=1036}] run summon minecraft:lightning_bolt -5.46 34.37 -185.00
execute as @e[tag=tower_lower,scores={Animation=1046}] run summon minecraft:lightning_bolt -7.44 35.00 -183.44
execute as @e[tag=tower_lower,scores={Animation=1000..1030}] at @s run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 1
execute as @e[tag=tower_lower,scores={Animation=1000..1030}] at @e[tag=tower_upper] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 1
execute as @e[tag=tower_lower,scores={Animation=1000..1050}] at @s run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 1
execute as @e[tag=tower_lower,scores={Animation=1000..1050}] at @e[tag=tower_upper] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 1
execute as @e[tag=tower_lower,scores={Animation=1000..1080}] at @s run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 1
execute as @e[tag=tower_lower,scores={Animation=1000..1080}] at @e[tag=tower_upper] run particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 1 1
execute as @e[tag=tower_lower,scores={Animation=1000..1100}] at @s run particle block spruce_planks ~ ~ ~ 1.5 1.5 1.5 1 10
execute as @e[tag=tower_lower,scores={Animation=1000..1140}] at @e[tag=tower_upper] run particle block spruce_planks ~ ~ ~ 1.5 1.5 1.5 1 10
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run particle minecraft:cloud 1.00 26.43 -193.00 1 0 1 0.2 100
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run clone 6 19 -191 3 18 -193 -2 26 -192
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill 2 26 -192 1 29 -196 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill 3 29 -195 3 26 -193 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill 4 29 -194 4 26 -194 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill 1 29 -191 -2 27 -191 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill 0 29 -190 -1 27 -190 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill 0 29 -195 0 27 -192 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill -1 29 -194 -1 27 -192 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill -2 29 -193 -2 27 -192 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1126}] at @s run fill -3 29 -192 -3 27 -192 minecraft:barrier
execute as @e[tag=tower_lower,scores={Animation=1124}] at @s run summon minecraft:falling_block 2.9 26.00 -195.2 {Motion:[0.3d,0.4d,-0.3d],Tags:["falling_block_kill","fbk2"],Time:1,BlockState:{Name:"andesite"}}
execute as @e[tag=tower_lower,scores={Animation=1124}] at @s run summon minecraft:falling_block 2.9 26.00 -195.2 {Motion:[0.2d,0.4d,-0.3d],Tags:["falling_block_kill","fbk2"],Time:1,BlockState:{Name:"andesite"}}
execute as @e[tag=tower_lower,scores={Animation=1140}] at @e[tag=tower_upper] run particle minecraft:cloud -12 27 -178 1 0 1 0.2 100

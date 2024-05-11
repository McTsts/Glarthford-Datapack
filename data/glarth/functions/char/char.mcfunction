execute @e[tag=sleep] ~ ~ ~ function mctsts:char/sleep
execute @e[tag=!sleep,score_Sleep_min=1] ~ ~ ~ function mctsts:char/sleep
tp @e[tag=zzz] ~ ~0.01 ~
tp @e[tag=char_msg] ~ ~0.01 ~
scoreboard players add @e[tag=char_msg] msg 1
kill @e[tag=char_msg,score_msg_min=20]
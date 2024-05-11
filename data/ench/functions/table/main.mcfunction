# Proximity
scoreboard players add @s enchOpen 0
execute as @s[tag=!etOpening,tag=!etClosing,tag=!etOpen,tag=!forceOpen] at @s align xyz positioned ~0.5 ~1.5 ~0.5 if entity @a[distance=..3,gamemode=!spectator] run function ench:table/oc/open
execute as @s[tag=!etOpening,tag=!etClosing,tag=!etOpen,tag=forceOpen] at @s align xyz positioned ~0.5 ~1.5 ~0.5 run function ench:table/oc/open
execute as @s[tag=etOpening] at @s run function ench:table/oc/opening
execute as @s[tag=!etOpening,tag=!etClosing,tag=etOpen,tag=!forceOpen] at @s align xyz positioned ~0.5 ~1.5 ~0.5 unless entity @a[distance=..3,gamemode=!spectator] run function ench:table/oc/close
execute as @s[tag=etClosing] at @s run function ench:table/oc/closing


## Pieces
# Main Bob
execute at @s[tag=!etOpen,tag=!etOpening] run function ench:table/bob
execute at @s[tag=etOpen,tag=etClosing] run function ench:table/bob

# Face Player
execute at @s[tag=!etOpen,tag=etOpening,tag=!bookSpin] at @s run function ench:table/face
execute at @s[tag=etOpen,tag=!etClosing,tag=!bookSpin] at @s run function ench:table/face
execute at @s[tag=bookSpin] at @s run tp @s ~ ~ ~ ~8 ~

# Covers
execute at @s rotated ~90 0 positioned ^ ^0.0245 ^-0.061 as @e[tag=etCover1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s rotated ~-90 0 positioned ^ ^0.0245 ^-0.061 as @e[tag=etCover2,limit=1,sort=nearest] run tp @s ~ ~ ~ ~90 ~

# Pages
execute at @s[tag=etOpen,tag=!etClosing] rotated ~90 0 positioned ^ ^0.09 ^0.0 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[tag=etOpen,tag=!etClosing] rotated ~-90 0 positioned ^ ^0.09 ^0.0 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~
execute at @s[tag=!etOpen,tag=!etOpening] rotated ~90 0 positioned ^ ^0.025 ^0.01 as @e[tag=etBook1,limit=3,sort=nearest] run tp @s ~ ~ ~ ~-90 ~
execute at @s[tag=!etOpen,tag=!etOpening] rotated ~-90 0 positioned ^ ^0.025 ^0.01 as @e[tag=etBook2,limit=3,sort=nearest] run tp @s ~ ~ ~ ~90 ~


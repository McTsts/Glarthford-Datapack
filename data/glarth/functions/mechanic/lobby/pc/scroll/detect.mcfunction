# Remember Last Speeds
scoreboard players operation @s pcSpeed5 = @s pcSpeed4
scoreboard players operation @s pcSpeed4 = @s pcSpeed3
scoreboard players operation @s pcSpeed3 = @s pcSpeed2
scoreboard players operation @s pcSpeed2 = @s pcSpeed1

# Detect new speed
scoreboard players reset @s pcSpeed1
execute as @s[scores={pcSlot=0}] run function glarth:mechanic/lobby/pc/scroll/0
execute as @s[scores={pcSlot=1}] run function glarth:mechanic/lobby/pc/scroll/1
execute as @s[scores={pcSlot=2}] run function glarth:mechanic/lobby/pc/scroll/2
execute as @s[scores={pcSlot=3}] run function glarth:mechanic/lobby/pc/scroll/3
execute as @s[scores={pcSlot=4}] run function glarth:mechanic/lobby/pc/scroll/4
execute as @s[scores={pcSlot=5}] run function glarth:mechanic/lobby/pc/scroll/5
execute as @s[scores={pcSlot=6}] run function glarth:mechanic/lobby/pc/scroll/6
execute as @s[scores={pcSlot=7}] run function glarth:mechanic/lobby/pc/scroll/7
execute as @s[scores={pcSlot=8}] run function glarth:mechanic/lobby/pc/scroll/8

# Calculate average speed of speeds that ae greater than 0 and where the direction is equal to the latest speed (unless that is zero) 
# -> this allows fast changes between positive/negative speeds which would otherwise be weirdly averaged
scoreboard players operation @s pcSpeed = @s pcSpeed1
scoreboard players set @s pcSpeedX 0
execute unless score @s pcSpeed1 matches 0 run scoreboard players set @s pcSpeedX 1
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed2 matches 1.. run scoreboard players operation @s pcSpeed += @s pcSpeed2
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed2 matches 1.. run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed3 matches 1.. run scoreboard players operation @s pcSpeed += @s pcSpeed3
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed3 matches 1.. run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed4 matches 1.. run scoreboard players operation @s pcSpeed += @s pcSpeed4
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed4 matches 1.. run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed5 matches 1.. run scoreboard players operation @s pcSpeed += @s pcSpeed5
execute if score @s pcSpeed1 matches 0.. if score @s pcSpeed5 matches 1.. run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed2 matches ..-1 run scoreboard players operation @s pcSpeed += @s pcSpeed2
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed2 matches ..-1 run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed3 matches ..-1 run scoreboard players operation @s pcSpeed += @s pcSpeed3
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed3 matches ..-1 run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed4 matches ..-1 run scoreboard players operation @s pcSpeed += @s pcSpeed4
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed4 matches ..-1 run scoreboard players add @s pcSpeedX 1
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed5 matches ..-1 run scoreboard players operation @s pcSpeed += @s pcSpeed5
execute if score @s pcSpeed1 matches ..0 if score @s pcSpeed5 matches ..-1 run scoreboard players add @s pcSpeedX 1
scoreboard players operation @s pcSpeed /= @s pcSpeedX


# Store current slot for next speed detection
scoreboard players set @s[nbt={SelectedItemSlot:0}] pcSlot 0
scoreboard players set @s[nbt={SelectedItemSlot:1}] pcSlot 1
scoreboard players set @s[nbt={SelectedItemSlot:2}] pcSlot 2
scoreboard players set @s[nbt={SelectedItemSlot:3}] pcSlot 3
scoreboard players set @s[nbt={SelectedItemSlot:4}] pcSlot 4
scoreboard players set @s[nbt={SelectedItemSlot:5}] pcSlot 5
scoreboard players set @s[nbt={SelectedItemSlot:6}] pcSlot 6
scoreboard players set @s[nbt={SelectedItemSlot:7}] pcSlot 7
scoreboard players set @s[nbt={SelectedItemSlot:8}] pcSlot 8
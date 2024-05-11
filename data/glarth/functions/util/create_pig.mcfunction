summon minecraft:pig ~ ~ ~ {Tags:["newAnimal"]}
scoreboard players operation @e[tag=newAnimal] netherID = id edgeI
	tag @e[tag=newAnimal] remove newAnimal
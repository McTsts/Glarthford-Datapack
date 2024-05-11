function glarth:mechanic/dim_end/updraft/1
execute positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=10,dz=2,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run tag @s add inUpdraft
execute positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=10,dz=2,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]},tag=!hasUpLevitation] run function glarth:mechanic/dim_end/updraft/levitation
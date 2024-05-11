data modify entity @e[tag=stackNewItem,type=item,distance=..1,limit=1] Item.Count set from storage glarth:main stack
tag @e[tag=stackNewItem,type=item,distance=..1,limit=1] remove stackNewItem
tag @s add stackSkip
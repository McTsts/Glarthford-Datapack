#give function:
#function glarth:items/util/give {item:"..1"} 

# initialize all items
function glarth:items/init/trades


# static items [excluded from randomization]
# richard: these items are only dropped after they have been given to richard so the same item should be given back
data modify storage glarth:items static.richard set value {1:{id:"minecraft:diamond"},2:{table:"glarth:give/keys/default"}}
# farmer: same as richard
data modify storage glarth:items static.farmer set value {1:{table:"glarth:give/tools/diamond_hoe"}}

#give function:
#function glarth:items/util/give {item:"..1"} 
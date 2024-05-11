execute store result storage ntca:io in int 1 run scoreboard players get @s tbcAbsorption
function ntca:call
data modify block 84 26 -121 Items[{Slot:0b}].tag.tbcAbsorption set from storage ntca:io out

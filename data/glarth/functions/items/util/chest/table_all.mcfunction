$execute if score chestPlayers Temp matches 1.. run loot replace block ~ ~ ~ container.$(slot) loot $(table)
$data modify block ~ ~ ~ Items[{Slot:$(slot)b}].count set value $(total)
schedule function glarth:mechanic/admap/3 1t
execute if score season winter matches 0 unless score quest Stats matches 4 run advancement grant @a[scores={admap=1}] only glarth:background/default
execute if score season winter matches 0 if score quest Stats matches 4 run advancement grant @a[scores={admap=1}] only glarth:background/end
execute if score season winter matches 1 run advancement grant @a[scores={admap=1}] only glarth:background/winter
execute if score season winter matches 2 run advancement grant @a[scores={admap=1}] only glarth:background/autumn
# Grimsbane spawns
execute if score time Dis matches 1600.. if entity @e[type=area_effect_cloud,tag=events,tag=!evGrimsbaneSpawned] run function glarth:events/event/moves/grimsbane
execute if score time Dis matches ..1559 if entity @e[type=area_effect_cloud,tag=events,tag=evGrimsbaneSpawned] run function glarth:events/event/moves/grimsbane_undo
# Church destroyed
execute if score time Dis matches 1700.. if entity @e[type=area_effect_cloud,tag=events,tag=!evChurchDestroyed] run function glarth:events/event/destroyed/church
execute if score time Dis matches ..1659 if entity @e[type=area_effect_cloud,tag=events,tag=evChurchDestroyed] run function glarth:events/event/destroyed/church_undo
# Ship destroyed
execute if score time Dis matches 1756..1800 unless entity @e[tag=events,tag=evgbD] unless score lowGraphics Stats matches 1 if score shipStatus Animation matches 1 run function glarth:mechanic/animation/ship/to_model
execute if score time Dis matches 1800.. if entity @e[type=area_effect_cloud,tag=events,tag=!evShipDestroyed] run function glarth:events/event/destroyed/ship
execute if score time Dis matches ..1759 if entity @e[type=area_effect_cloud,tag=events,tag=evShipDestroyed] run function glarth:events/event/destroyed/ship_undo
# Mill destroyed
execute if score time Dis matches 1900.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMillDestroyed] run function glarth:events/event/destroyed/mill
execute if score time Dis matches ..1859 if entity @e[type=area_effect_cloud,tag=events,tag=evMillDestroyed] run function glarth:events/event/destroyed/mill_undo
# Tower destroyed
execute if score time Dis matches 2000.. if entity @e[type=area_effect_cloud,tag=events,tag=!evTowerDestroyed] run function glarth:events/event/destroyed/tower
execute if score time Dis matches ..1959 if entity @e[type=area_effect_cloud,tag=events,tag=evTowerDestroyed] run function glarth:events/event/destroyed/tower_undo

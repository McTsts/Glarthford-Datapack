# Grimsbane spawns
execute if score time Dis matches 1200.. if entity @e[type=area_effect_cloud,tag=events,tag=!evGrimsbaneSpawned] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/moves/grimsbane
execute if score time Dis matches ..1159 if entity @e[type=area_effect_cloud,tag=events,tag=evGrimsbaneSpawned] run function glarth:events/event/moves/grimsbane_undo
# Church destroyed
execute if score time Dis matches 1300.. if entity @e[type=area_effect_cloud,tag=events,tag=!evChurchDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/church
execute if score time Dis matches ..1259 if entity @e[type=area_effect_cloud,tag=events,tag=evChurchDestroyed] run function glarth:events/event/destroyed/church_undo
# Ship destroyed
execute if score time Dis matches 1356..1400 unless entity @e[tag=events,tag=evgbD] unless score lowGraphics Stats matches 1 if score shipStatus Animation matches 1 run function glarth:mechanic/animation/ship/to_model
execute if score time Dis matches 1400.. if entity @e[type=area_effect_cloud,tag=events,tag=!evShipDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/ship
execute if score time Dis matches ..1359 if entity @e[type=area_effect_cloud,tag=events,tag=evShipDestroyed] run function glarth:events/event/destroyed/ship_undo
# Mill destroyed
execute if score time Dis matches 1500.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMillDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/mill
execute if score time Dis matches ..1459 if entity @e[type=area_effect_cloud,tag=events,tag=evMillDestroyed] run function glarth:events/event/destroyed/mill_undo
# Tower destroyed
execute if score time Dis matches 1600.. if entity @e[type=area_effect_cloud,tag=events,tag=!evTowerDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/tower
execute if score time Dis matches ..1559 if entity @e[type=area_effect_cloud,tag=events,tag=evTowerDestroyed] run function glarth:events/event/destroyed/tower_undo
# Wall destroyed
execute if score time Dis matches 1700.. if entity @e[type=area_effect_cloud,tag=events,tag=!evWallDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/wall
execute if score time Dis matches ..1659 if entity @e[type=area_effect_cloud,tag=events,tag=evWallDestroyed] run function glarth:events/event/destroyed/wall_undo
# Brewery destroyed
execute if score time Dis matches 1800.. if entity @e[type=area_effect_cloud,tag=events,tag=!evBreweryDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/brewery
execute if score time Dis matches ..1759 if entity @e[type=area_effect_cloud,tag=events,tag=evBreweryDestroyed] run function glarth:events/event/destroyed/brewery_undo
# Brewery destroyed
execute if score time Dis matches 1900.. if entity @e[type=area_effect_cloud,tag=events,tag=!evAppleDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/apple
execute if score time Dis matches ..1859 if entity @e[type=area_effect_cloud,tag=events,tag=evAppleDestroyed] run function glarth:events/event/destroyed/apple_undo
# Merchant destroyed
execute if score time Dis matches 2000.. if entity @e[type=area_effect_cloud,tag=events,tag=!evMerchantDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/merchant
execute if score time Dis matches ..1959 if entity @e[type=area_effect_cloud,tag=events,tag=evMerchantDestroyed] run function glarth:events/event/destroyed/merchant_undo
# Tent destroyed
execute if score time Dis matches 2100.. if entity @e[type=area_effect_cloud,tag=events,tag=!evTentDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/tent
execute if score time Dis matches ..2059 if entity @e[type=area_effect_cloud,tag=events,tag=evTentDestroyed] run function glarth:events/event/destroyed/tent_undo
# Cart destroyed
execute if score time Dis matches 2200.. if entity @e[type=area_effect_cloud,tag=events,tag=!evCartDestroyed] unless entity @e[tag=events,tag=evGrimsbaneMoves] run function glarth:events/event/destroyed/cart
execute if score time Dis matches ..2159 if entity @e[type=area_effect_cloud,tag=events,tag=evCartDestroyed] run function glarth:events/event/destroyed/cart_undo




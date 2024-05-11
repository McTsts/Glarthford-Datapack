#151 Pillager Guard (Inner) | Dialogue
execute if entity @s[scores={iCrossbow=..0,iVindicatorSkull=..0,iBanner=..0}] run function glarth:dialogue/pillager_guard2/lines/trade1x

execute if entity @s[scores={iCrossbow=1..,iVindicatorSkull=..0,iBanner=..0}] run function glarth:dialogue/pillager_guard2/lines/trade1x2
execute if entity @s[scores={iCrossbow=1..,iVindicatorSkull=1..,iBanner=..0}] run function glarth:dialogue/pillager_guard2/lines/trade1x2
execute if entity @s[scores={iCrossbow=1..,iVindicatorSkull=..0,iBanner=1..}] run function glarth:dialogue/pillager_guard2/lines/trade1x2

execute if entity @s[scores={iCrossbow=..0,iVindicatorSkull=1..,iBanner=..0}] run function glarth:dialogue/pillager_guard2/lines/trade1x2
execute if entity @s[scores={iCrossbow=..0,iVindicatorSkull=1..,iBanner=1..}] run function glarth:dialogue/pillager_guard2/lines/trade1x2

execute if entity @s[scores={iCrossbow=..0,iVindicatorSkull=..0,iBanner=1..}] run function glarth:dialogue/pillager_guard2/lines/trade1x2
execute at @e[tag=gibbs] if entity @e[tag=gibbs,tag=!h] run tellraw @a[distance=..15] ["",{"translate":"trade2","with":[{"translate":"gibbs.yeah.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 210"}}]
execute at @e[tag=gibbs] if entity @e[tag=gibbs,tag=!h] run tellraw @a[distance=..15] ["",{"translate":"trade2","with":[{"translate":"gibbs.yeah.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 211"}}]
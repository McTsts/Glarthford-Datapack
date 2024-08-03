$execute if score @s tbcAttackStage matches $(pre) run function glarth:combat/action_enemy/stages/block/select {init:$(init),throw:$(throw)}

$execute if score @s tbcAttackStage matches $(post) run function glarth:combat/action_enemy/stages/block/on_hit/$(on_hit)
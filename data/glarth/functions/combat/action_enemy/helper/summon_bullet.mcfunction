scoreboard players set r Random 3
function glarth:util/rand_tbc

execute if score n Random matches 1 run summon minecraft:shulker_bullet ~ ~0.7 ~ {NoGravity:1,Tags:["tbc","tbcBulletPN","tbcShulkerBullet","tbcSB1"]}
execute if score n Random matches 2 run summon minecraft:shulker_bullet ~ ~0.7 ~ {NoGravity:1,Tags:["tbc","tbcBulletPN","tbcShulkerBullet","tbcSB2"]}
execute if score n Random matches 3 run summon minecraft:shulker_bullet ~ ~0.7 ~ {NoGravity:1,Tags:["tbc","tbcBulletPN","tbcShulkerBullet","tbcSB3"]}

execute at @s run playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 1 1
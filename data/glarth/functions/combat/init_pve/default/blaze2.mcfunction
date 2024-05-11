playsound minecraft:entity.blaze.shoot hostile @a[distance=..5] ~ ~ ~ 1 0.5
summon blaze ~ ~ ~ {Tags:["blaze_a"],NoGravity:0b,Attributes:[{Name:"generic.movementSpeed",Base:0}],PersistenceRequired:1b}
kill @s
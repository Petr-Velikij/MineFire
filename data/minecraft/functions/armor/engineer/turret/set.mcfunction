summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["turret","turret_down","turret_new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:851}}]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["turret","turret_up","turret_new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:852}}]}
summon chicken ~ ~ ~ {OnGround:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:30f,Tags:["turret","turret_collider"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:30}]}
scoreboard players operation @e[tag=turret_new,distance=..1,tag=turret_up] ID.Owner = @s ID.Player
scoreboard players operation @e[tag=turret_new,distance=..1,tag=turret_up] ID.Team = @s ID.Team
scoreboard players set @e[tag=turret_new,distance=..1,tag=turret_up] Loop -60
tag @e[tag=turret_new,distance=..1] remove turret_new

scoreboard players set @s armor_cooldown 1800
scoreboard players set @s PKM_1 0
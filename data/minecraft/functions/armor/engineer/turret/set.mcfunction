summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["turret","turret_down","turret_new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:851}}]}
summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["turret","turret_up","turret_new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:852}}]}
summon wolf ~ ~ ~ {Silent:1b,Sitting:1b,Tags:["turret","turret_collider","turret_new"],CustomName:'{"text":"Турель"}',ArmorItems:[{},{},{id:"minecraft:leather",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:6s}]}},{}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:99999999,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:40},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.4}]}
function gun/get_uuid
execute as @e[type=wolf,tag=turret,distance=..1,sort=nearest,limit=1] run function gun/set_uuid
scoreboard players operation @e[tag=turret_new,distance=..1,tag=turret_up] ID.Owner = @s ID.Player
scoreboard players operation @e[tag=turret_new,distance=..1,tag=turret_down] ID.Owner = @s ID.Player
scoreboard players operation @e[tag=turret_new,distance=..1,tag=turret_collider] ID.Owner = @s ID.Player
scoreboard players operation @e[tag=turret_new,distance=..1,tag=turret_up] ID.Team = @s ID.Team
execute if score @s ID.Team matches 1 run team join A @e[tag=turret_new,distance=..1,tag=turret_collider]
execute if score @s ID.Team matches 2 run team join B @e[tag=turret_new,distance=..1,tag=turret_collider]
execute if score @s ID.Team matches 3 run team join C @e[tag=turret_new,distance=..1,tag=turret_collider]
execute if score @s ID.Team matches 4 run team join D @e[tag=turret_new,distance=..1,tag=turret_collider]
scoreboard players set @e[tag=turret_new,distance=..1,tag=turret_up] Loop -60
tag @e[tag=turret_new,distance=..1] remove turret_new

scoreboard players set @s armor_cooldown 601
scoreboard players set @s PKM_1 0
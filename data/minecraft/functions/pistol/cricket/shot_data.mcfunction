data merge entity @s {NoGravity:1b,damage:0.4d,crit:0b,PierceLevel:0b,Tags:["cricket","my_cricket"]}
execute if score buf ID.module matches 1 run function module/energy/up_damage
function minecraft:gun/set_uuid
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 120
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.001 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.001 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.001 run scoreboard players get *Z varTime
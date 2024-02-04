data merge entity @s {NoGravity:1b,damage:0.6d,crit:0b,PierceLevel:0b,Tags:["amper","my_amper"]}
execute if score distance varTime matches ..75 run function gun/amper/modify_damage
execute if score buf ID.module matches 1 run function module/energy/up_damage
function minecraft:gun/set_uuid
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 170
scoreboard players set @s DamageLegs 50
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.001 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.001 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.001 run scoreboard players get *Z varTime
data merge entity @s {NoGravity:1b,damage:2.62d,crit:0b,PierceLevel:0b,Tags:["volt"]}
execute if score idModule varTime matches 1 run function module/energy/up_damage
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 120
scoreboard players set @s DamageLegs 80
scoreboard players operation @s varTimeEntity1 = *1 varTime
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get *Z varTime
data merge entity @s {damage:1.32d,crit:0b,PierceLevel:1b,Tags:["armature","particle_crit"]}

scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 180
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner

scoreboard players operation *X varTime *= *1 varTime
scoreboard players operation *Y varTime *= *1 varTime
scoreboard players operation *Z varTime *= *1 varTime
scoreboard players operation *X varTime /= *100 CONST
scoreboard players operation *Y varTime /= *100 CONST
scoreboard players operation *Z varTime /= *100 CONST
execute store result entity @s Motion[0] double 0.0007 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0007 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0007 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed
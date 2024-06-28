data merge entity @s {damage:1.17d,crit:0b,PierceLevel:1b,Tags:["armature","particle_crit"]}

scoreboard players set Damage varTime 117
scoreboard players operation Damage varTime *= Power varTime
execute store result entity @s damage double 0.0001 run scoreboard players get Damage varTime

scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 180
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner

execute store result entity @s Motion[0] double 0.0007 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0007 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0007 run scoreboard players get *Z varTime
execute if score buf ID.module matches 5 run function module/overclocking/up_speed
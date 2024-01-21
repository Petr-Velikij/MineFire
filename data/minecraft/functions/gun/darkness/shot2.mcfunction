data merge entity @s {damage:0.89d,crit:0b,PierceLevel:0b,Tags:["darkness","particle_crit"],CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:30}]}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 150
scoreboard players set @s DamageLegs 50
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0008 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0008 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0008 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed
data merge entity @s {NoGravity:1b,damage:0.685d,crit:0b,PierceLevel:0b,Tags:["marble"],SoundEvent:"block.snow.hit",Color:65535,CustomPotionEffects:[{Id:2,Amplifier:2b,Duration:30},{Id:15,Amplifier:0b,Duration:10}]}
execute if score buf ID.module matches 1 run function module/energy/up_damage
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 200
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0006 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0006 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0006 run scoreboard players get *Z varTime
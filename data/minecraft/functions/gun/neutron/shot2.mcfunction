data merge entity @s {NoGravity:1b,crit:0b,PierceLevel:1b,Color:65288,Tags:["neutron"],CustomPotionEffects:[{Id:19,Amplifier:0b,Duration:60}]}
execute store result entity @s damage double 0.0047 run scoreboard players get buf Power
execute if score buf Power matches 150.. run tag @s add up

scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 180
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner

execute store result entity @s Motion[0] double 0.00085 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00085 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00085 run scoreboard players get *Z varTime
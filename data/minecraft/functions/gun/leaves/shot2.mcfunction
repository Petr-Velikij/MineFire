data merge entity @s {damage:1.352d,NoGravity:1b,crit:0b,PierceLevel:3b,Tags:["bullet_leaves","particle_crit"]}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 150
scoreboard players set @s DamageLegs 60
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00083 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00083 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00083 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed
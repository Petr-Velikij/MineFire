data merge entity @s {damage:1.06d,crit:0b,PierceLevel:0b,Tags:["bullet_anfisa","particle_crit"]}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 180
scoreboard players set @s DamageLegs 70
scoreboard players operation @s ID.Owner = buf ID.Owner
scoreboard players operation @s ID.target = buf ID.target
scoreboard players operation @s varTimeEntity1 = *XR varTime
scoreboard players operation @s varTimeEntity2 = *YR varTime
execute store result entity @s Motion[0] double 0.00085 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00085 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00085 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed
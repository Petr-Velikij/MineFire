function gun/set_uuid
data merge entity @s {damage:3.33d,crit:0b,PierceLevel:0b,Tags:["knife","particle_crit"]}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 250
scoreboard players set @s DamageLegs 100
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0003 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0003 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0003 run scoreboard players get *Z varTime
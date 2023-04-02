data merge entity @s {damage:1d,crit:0b,PierceLevel:5b,Tags:["flame_cust"],SoundEvent:"minecraft:entity.ghast.shoot"}
scoreboard players set @s ArrowDamage 1
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00025 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00025 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get *Z varTime
data merge entity @s {damage:0.88d,crit:0b,PierceLevel:0b,Tags:["bullet_shtil"],SoundEvent:"minecraft:entity.vex.hurt"}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 150
scoreboard players set @s DamageLegs 50
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00070 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00070 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00070 run scoreboard players get *Z varTime
execute if score buf ID.module matches 5 run function module/overclocking/up_speed
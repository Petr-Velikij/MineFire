data merge entity @s {damage:0.68d,crit:0b,PierceLevel:5b,NoGravity:1b,Fire:60,pickup:0b,Tags:["gorynych","no_kill_inGround"],SoundEvent:"minecraft:block.fire.ambient"}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 120
scoreboard players set @s DamageLegs 100
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0003 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0003 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0003 run scoreboard players get *Z varTime
execute if score buf ID.module matches 5 run function module/overclocking/up_speed
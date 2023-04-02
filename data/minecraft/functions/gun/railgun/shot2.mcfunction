data merge entity @s {NoGravity:1b,damage:3.74d,crit:0b,PierceLevel:10b,Tags:["rail","particle_crit"],SoundEvent:"minecraft:block.anvil.land"}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 200
scoreboard players set @s DamageLegs 60
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00082 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00082 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00082 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed
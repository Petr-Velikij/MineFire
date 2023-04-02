data merge entity @s {damage:1.255d,crit:0b,PierceLevel:0b,Tags:["splitting1"]}
scoreboard players set @s Loop 0
scoreboard players operation @s varTimeEntity1 = *1 varTime
scoreboard players operation @s varTimeEntity2 = *2 varTime
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 200
scoreboard players set @s DamageLegs 100

execute store result entity @s Motion[0] double 0.0004 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get *Z varTime
execute if score idModule varTime matches 5 run function module/overclocking/up_speed
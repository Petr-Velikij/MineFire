data merge entity @s {NoGravity:1b,damage:2.9d,crit:0b,PierceLevel:3b,Tags:["grenade_launcher"]}
execute if score *1 varTime matches 1 run tag @s add up
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 100
scoreboard players set @s DamageLegs 100
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get *Z varTime
execute if score buf ID.module matches 5 run function module/overclocking/up_speed
data merge entity @s {NoGravity:1b,damage:2.37d,crit:0b,PierceLevel:0b,Tags:["obsidian_shotgun"]}
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 150
scoreboard players set @s DamageLegs 80
execute if score buf ID.module matches 1 run function module/energy/up_damage
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00025 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00025 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get *Z varTime
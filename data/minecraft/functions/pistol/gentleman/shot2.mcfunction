data merge entity @s {damage:1.33d,crit:0b,PierceLevel:0b,Tags:["gentleman","particle_crit","pistol"],Owner:[I;0,0,0,0]}
scoreboard players set @s Loop 0
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 120
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0006 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0006 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0006 run scoreboard players get *Z varTime
execute if score buf ID.module matches 5 run function module/overclocking/up_speed

function gun/set_uuid
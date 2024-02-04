data merge entity @s {NoGravity:1b,damage:0.0d,crit:0b,PierceLevel:0b,Tags:["magma"],SoundEvent:"entity.blaze.shoot"}
execute store result entity @s damage double 0.00565 run scoreboard players get buf Power

execute if score buf Power matches 150.. run data modify entity @s Fire set value 30
execute if score buf ID.module matches 1 run tag @s add up
execute if score buf ID.module matches 1 run function module/energy/up_damage

scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 130
scoreboard players set @s DamageLegs 80
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.0006 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.0006 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.0006 run scoreboard players get *Z varTime
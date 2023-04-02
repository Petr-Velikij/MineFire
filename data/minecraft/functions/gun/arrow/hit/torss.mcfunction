execute if score @s ArrowDamage matches 0 store result score *1 varTime run data get entity @s damage 10000
execute if score @s ArrowDamage matches 0 run scoreboard players operation *1 varTime /= @s DamageLegs

execute if score @s ArrowDamage matches 2 store result score *1 varTime run data get entity @s damage 10000
scoreboard players operation *1 varTime /= @s DamageHead

execute store result entity @s damage double 0.01 run scoreboard players get *1 varTime
scoreboard players set @s ArrowDamage 1
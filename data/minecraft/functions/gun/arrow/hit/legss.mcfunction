execute if score @s ArrowDamage matches 2 store result score *1 varTime run data get entity @s damage 10000
execute if score @s ArrowDamage matches 2 run scoreboard players operation *1 varTime /= @s DamageHead

execute if score @s ArrowDamage matches 1 store result score *1 varTime run data get entity @s damage 100
scoreboard players operation *1 varTime *= @s DamageLegs
execute store result entity @s damage double 0.0001 run scoreboard players get *1 varTime
scoreboard players set @s ArrowDamage 0
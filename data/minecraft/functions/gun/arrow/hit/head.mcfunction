execute if score @s ArrowDamage matches 0 store result score *1 varTime run data get entity @s damage 10000
execute if score @s ArrowDamage matches 0 run scoreboard players operation *1 varTime /= @s DamageLegs

execute if score @s ArrowDamage matches 1 store result score *1 varTime run data get entity @s damage 100
scoreboard players operation *1 varTime *= @s DamageHead
execute store result entity @s damage double 0.0001 run scoreboard players get *1 varTime
scoreboard players set @s ArrowDamage 2

scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run scoreboard players set @s PlayerHead 1
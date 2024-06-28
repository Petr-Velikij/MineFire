scoreboard players operation buf ID.Owner = @s ID.Player
execute as @e[type=arrow,distance=..3] if score @s ID.Owner = buf ID.Owner store result entity @s damage double 0.01 run data get entity @s damage 130

tag @s remove next_up
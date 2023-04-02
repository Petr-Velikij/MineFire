effect give @s resistance 1 3 false
execute unless score @s damage_taken matches 0 run function module/shield/break
execute rotated ~ 0 positioned ~ ~2 ~ run particle minecraft:end_rod ^-0.5 ^ ^-0.5 0 0 0 0 1 force @a[distance=..250]
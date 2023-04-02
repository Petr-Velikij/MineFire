#execute if data entity @s ActiveEffects[{Id:25}] rotated ~ 0 positioned ~ ~1.5 ~ run particle minecraft:witch ^-0.2 ^ ^-0.2 0 0 0 1 3
#execute if data entity @s ActiveEffects[{Id:25}] rotated ~ 0 positioned ~ ~1.5 ~ run particle minecraft:witch ^0.2 ^ ^-0.2 0 0 0 1 3
execute if data entity @s ActiveEffects[{Id:25}] rotated ~ 0 run particle minecraft:witch ^-0.15 ^ ^ 0 0 0 1 3
execute if data entity @s ActiveEffects[{Id:25}] rotated ~ 0 run particle minecraft:witch ^0.15 ^ ^ 0 0 0 1 3

execute if score @s PKM_2 matches 0 if data entity @s {OnGround:1b} run effect clear @s slow_falling
execute if score @s armor_cooldown2 matches 140.. if score @s sneak_time matches 1 run effect clear @s levitation
execute if entity @s[x_rotation=90] run effect clear @s slow_falling
execute if entity @s[x_rotation=90] run effect clear @s levitation

execute unless data entity @s ActiveEffects[{Id:28}] run scoreboard players set @s armor_cooldown2 0
scoreboard players remove @s[scores={armor_cooldown2=1..}] armor_cooldown2 1
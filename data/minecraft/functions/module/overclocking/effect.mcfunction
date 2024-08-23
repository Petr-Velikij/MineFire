scoreboard players set SetSupply varTime 0
execute if score @s ID.gun matches 2 if score @s modeFire matches 2 if score @s Supply matches ..5 run scoreboard players set SetSupply varTime 1
execute if score @s ID.gun matches 13 run scoreboard players set SetSupply varTime 1
execute if score @s ID.gun matches 21 run scoreboard players set SetSupply varTime 1
execute if score @s ID.gun matches 22 run scoreboard players set SetSupply varTime 7
execute if score @s ID.gun matches 23 run scoreboard players set SetSupply varTime 7
execute if score @s ID.gun matches 24 run scoreboard players set SetSupply varTime 7
execute if score @s ID.gun matches 32 run scoreboard players set SetSupply varTime 1
execute if score @s ID.gun matches 41 run scoreboard players set SetSupply varTime 5

execute unless score SetSupply varTime matches 0 if score SetSupply varTime < @s Supply run function module/overclocking/math_supply
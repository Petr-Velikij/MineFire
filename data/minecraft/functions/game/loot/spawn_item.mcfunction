tag @s remove there_item
execute if data entity @s HandItems run function game/loot/get_hand
execute if data entity @s ArmorItems run function game/loot/get_head

execute as @a[gamemode=!spectator,distance=..6] run function game/loot/give_item
playsound minecraft:entity.item.pickup player @a[distance=..20] ~ ~ ~ 0.7 2
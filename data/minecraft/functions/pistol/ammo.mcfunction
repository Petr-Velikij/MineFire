# 720 поинтов по умолчанию
# Делители числа  720: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 18, 20, 24, 30, 36, 40, 45, 48, 60, 72, 80, 90, 120, 144, 180, 240, 360, 720
#01 Диверсант/120
execute if score Inventory ID.pistol matches 1 run scoreboard players set @s price_cartridge 6
#02 Палач/48
execute if score Inventory ID.pistol matches 2 run scoreboard players set @s price_cartridge 15
#03 Цикада/360
execute if score Inventory ID.pistol matches 3 run scoreboard players set @s price_cartridge 2
#04 Джентельмен/36
execute if score Inventory ID.pistol matches 4 run scoreboard players set @s price_cartridge 20
#05 Сверчок/120
execute if score Inventory ID.pistol matches 5 run scoreboard players set @s price_cartridge 6
#06 Озарение/60
execute if score Inventory ID.pistol matches 6 run scoreboard players set @s price_cartridge 12

execute unless score @s price_cartridge matches -1 run function gun/mat
# 720 поинтов по умолчанию
# Делители числа  720: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 18, 20, 24, 30, 36, 40, 45, 48, 60, 72, 80, 90, 120, 144, 180, 240, 360, 720
#01 Волк-М30/90
execute if score Inventory ID.gun matches 1 run scoreboard players set @s price_cartridge 8
#02 Медведь-К70/60
execute if score Inventory ID.gun matches 2 run scoreboard players set @s price_cartridge 12
#03 Каратель/240
execute if score Inventory ID.gun matches 3 run scoreboard players set @s price_cartridge 3
#04 Потрошитель/120
execute if score Inventory ID.gun matches 4 run scoreboard players set @s price_cartridge 6
#11 Штиль/72
execute if score Inventory ID.gun matches 11 run scoreboard players set @s price_cartridge 10
#12 Штырь/48
execute if score Inventory ID.gun matches 12 run scoreboard players set @s price_cartridge 15
#13 Мрак/45
execute if score Inventory ID.gun matches 13 run scoreboard players set @s price_cartridge 16
#21  Анфиса/24
execute if score Inventory ID.gun matches 21 run scoreboard players set @s price_cartridge 30
#22  Сокол/9
execute if score Inventory ID.gun matches 22 run scoreboard players set @s price_cartridge 80
#23  Лист/20
execute if score Inventory ID.gun matches 23 run scoreboard players set @s price_cartridge 36
#24  Гроза/4
execute if score Inventory ID.gun matches 24 run scoreboard players set @s price_cartridge 180
#31  Зверобой/30
execute if score Inventory ID.gun matches 31 run scoreboard players set @s price_cartridge 24
#32  Тэссен/20
execute if score Inventory ID.gun matches 32 run scoreboard players set @s price_cartridge 36
#33  Расщепитель/8
execute if score Inventory ID.gun matches 33 run scoreboard players set @s price_cartridge 90
#34  Феникс/36
execute if score Inventory ID.gun matches 34 run scoreboard players set @s price_cartridge 20
#41  Бах-50А/18
execute if score Inventory ID.gun matches 41 run scoreboard players set @s price_cartridge 40
execute if score Inventory ID.gun matches 41 if score @s ID.armor matches 7 run scoreboard players set @s price_cartridge 26
#42  Саранча/24
execute if score Inventory ID.gun matches 42 run scoreboard players set @s price_cartridge 30
execute if score Inventory ID.gun matches 42 if score @s ID.armor matches 7 run scoreboard players set @s price_cartridge 20
#43  Макуся/8
execute if score Inventory ID.gun matches 43 run scoreboard players set @s price_cartridge 90
execute if score Inventory ID.gun matches 43 if score @s ID.armor matches 7 run scoreboard players set @s price_cartridge 60
#51  Мрамор/120
execute if score Inventory ID.gun matches 51 run scoreboard players set @s price_cartridge 6
#52  Магма/144
execute if score Inventory ID.gun matches 52 run scoreboard players set @s price_cartridge 5
#53  Ампер/36
execute if score Inventory ID.gun matches 53 run scoreboard players set @s price_cartridge 20
#54  Вольт/48
execute if score Inventory ID.gun matches 54 run scoreboard players set @s price_cartridge 15

execute unless score @s price_cartridge matches -1 run function gun/mat
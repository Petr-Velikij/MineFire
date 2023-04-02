# Стадия 5
execute if score Стадия Zona matches 1 if score Размер Zona matches 5 run worldborder set 280 15
execute if score Стадия Zona matches 1 if score Размер Zona matches 5 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 5 run scoreboard players set Стадия Zona 10

# Стадия 4
execute if score Стадия Zona matches 1 if score Размер Zona matches 4 run worldborder set 210 15
execute if score Стадия Zona matches 1 if score Размер Zona matches 4 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 4 run scoreboard players set Стадия Zona 10

# Стадия 3
execute if score Стадия Zona matches 1 if score Размер Zona matches 3 run worldborder set 140 15
execute if score Стадия Zona matches 1 if score Размер Zona matches 3 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 3 run scoreboard players set Стадия Zona 10

# Стадия 2
execute if score Стадия Zona matches 1 if score Размер Zona matches 2 run worldborder set 70 15
execute if score Стадия Zona matches 1 if score Размер Zona matches 2 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 2 run scoreboard players set Стадия Zona 10

# Стадия 1
execute if score Стадия Zona matches 1 if score Размер Zona matches 1 run worldborder set 1 15
execute if score Стадия Zona matches 1 if score Размер Zona matches 1 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 1 run scoreboard players set Стадия Zona 10

execute if score Стадия Zona matches 20 run tellraw @a {"text":"\u0417\u043e\u043d\u0430 \u043d\u0430\u0447\u0430\u043b\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435!","bold":true,"color":"aqua"}
execute if score Стадия Zona matches 10 run tellraw @a {"text":"\u0417\u043e\u043d\u0430 \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u043b\u0430\u0441\u044c!","bold":true,"color":"aqua"}
execute if score Стадия Zona matches 10 run scoreboard players add @a[gamemode=!spectator,scores={ID.armor=6}] Resources 75

execute if score Стадия Zona matches 10 if score Размер Zona matches 1..5 run scoreboard players set Время Zona 40
execute if score Стадия Zona matches 20 if score Размер Zona matches 1..5 run scoreboard players set Время Zona 15

execute if score Стадия Zona matches 20 run scoreboard players remove Размер Zona 1

execute if score Стадия Zona matches 10 run scoreboard players set Стадия Zona 1
execute if score Стадия Zona matches 20 run scoreboard players set Стадия Zona 2

execute if score Стадия Zona matches 1 if score Размер Zona matches 0 run scoreboard players set Стадия Zona 0
# Стадия 5
execute if score Стадия Zona matches 1 if score Размер Zona matches 5 run worldborder set 280 30
execute if score Стадия Zona matches 1 if score Размер Zona matches 5 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 5 run scoreboard players set Стадия Zona 10

# Стадия 4
execute if score Стадия Zona matches 1 if score Размер Zona matches 4 run worldborder set 210 30
execute if score Стадия Zona matches 1 if score Размер Zona matches 4 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 4 run scoreboard players set Стадия Zona 10

# Стадия 3
execute if score Стадия Zona matches 1 if score Размер Zona matches 3 run worldborder set 140 30
execute if score Стадия Zona matches 1 if score Размер Zona matches 3 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 3 run scoreboard players set Стадия Zona 10

# Стадия 2
execute if score Стадия Zona matches 1 if score Размер Zona matches 2 run worldborder set 70 30
execute if score Стадия Zona matches 1 if score Размер Zona matches 2 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 2 run scoreboard players set Стадия Zona 10

# Стадия 1
execute if score Стадия Zona matches 1 if score Размер Zona matches 1 run worldborder set 20 30
execute if score Стадия Zona matches 1 if score Размер Zona matches 1 run scoreboard players set Стадия Zona 20

execute if score Стадия Zona matches 2 if score Размер Zona matches 1 run scoreboard players set Стадия Zona 10

execute if score Стадия Zona matches 20 run tellraw @a {"text":"Зона начала движение!","bold":true,"color":"aqua"}
execute if score Стадия Zona matches 10 run tellraw @a {"text":"Зона остановилась!","bold":true,"color":"aqua"}

execute if score Стадия Zona matches 10 if score Размер Zona matches 1..5 run scoreboard players set Время Zona 40
execute if score Стадия Zona matches 20 if score Размер Zona matches 1..5 run scoreboard players set Время Zona 30

execute if score Стадия Zona matches 20 run scoreboard players remove Размер Zona 1

execute if score Стадия Zona matches 10 run scoreboard players set Стадия Zona 1
execute if score Стадия Zona matches 20 run scoreboard players set Стадия Zona 2

execute if score Стадия Zona matches 1 if score Размер Zona matches 0 run scoreboard players set Стадия Zona 0
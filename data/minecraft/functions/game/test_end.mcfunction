scoreboard players set #Team Zona 0
execute if entity @a[gamemode=adventure,team=A] run scoreboard players add #Team Zona 1
execute if entity @a[gamemode=adventure,team=B] run scoreboard players add #Team Zona 1
execute if entity @a[gamemode=adventure,team=C] run scoreboard players add #Team Zona 1
execute if entity @a[gamemode=adventure,team=D] run scoreboard players add #Team Zona 1
execute if entity @a[gamemode=adventure,team=E] run scoreboard players add #Team Zona 1

execute if score #Team Zona matches 1 if score Игроков Zona matches 1 if score Время Zona matches ..58 as @p[gamemode=adventure] at @s run function minecraft:game/end/one_in_team
execute if score #Team Zona matches 1 unless score Игроков Zona matches 1 if score Время Zona matches ..58 as @r[gamemode=adventure] at @s run function minecraft:game/end/several_in_team
execute if score Игроков Zona matches 0 if score Время Zona matches 59..60 run function minecraft:game/end/no_team
execute if score #Team Zona matches 1 if score Время Zona matches 59..60 run function minecraft:game/end/no_team
execute if score Игроков Zona matches 0 if score Стадия Zona matches 1..2 if score Время Zona matches ..58 run function minecraft:game/end/no_winners
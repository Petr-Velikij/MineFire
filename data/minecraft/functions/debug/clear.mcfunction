scoreboard players set cout_arrow Debug 0
execute as @e[type=arrow] run scoreboard players add cout_arrow Debug 1
execute if score cout_arrow Debug matches 100.. store result score *1 varTime run kill @e[type=arrow]
execute if score cout_arrow Debug matches 100.. run tellraw @a [{"text":"Критичиская отчистка: улалено ", "color": "red"},{"score":{"name":"*1","objective":"varTime"}},{"text":" стрел"}]

scoreboard players set cout_entity Debug 0
execute as @e run scoreboard players add cout_entity Debug 1
execute if score cout_entity Debug matches 200.. store result score *1 varTime run kill @e[type=player]
execute if score cout_entity Debug matches 200.. run tellraw @a [{"text":"Критичиская отчистка: улалено ", "color": "red"},{"score":{"name":"*1","objective":"varTime"}},{"text":" существ"}]
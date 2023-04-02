scoreboard players set *1 varTime 0
execute as @a[x=-4,y=78,z=16,dx=8,dy=3,dz=3,gamemode=adventure] run tag @s add Ready
execute at @a[tag=Ready] run scoreboard players add *1 varTime 1
title @a times 0 30 0
title @a title {"text":""}
execute as @a[tag=Ready] run title @s subtitle [{"text":"Готовы ","color":"green","bold":true,"italic":false},{"score":{"name":"*1","objective":"varTime"}},{"text":"/"},{"score":{"name":"Игроков","objective":"Zona"}}]
execute as @a[tag=!Ready] run title @s subtitle [{"text":"Готовы ","color":"yellow","bold":true,"italic":false},{"score":{"name":"*1","objective":"varTime"}},{"text":"/"},{"score":{"name":"Игроков","objective":"Zona"}}]
tag @a[tag=Ready] remove Ready

execute if score *1 varTime matches 1.. if score *1 varTime = Игроков Zona run function game/auto/start
scoreboard players set @s Loop 60
tag @s add Electro
execute positioned ^ ^ ^0.2 run function gun/volt/chain/search_loop
scoreboard players reset @s Loop
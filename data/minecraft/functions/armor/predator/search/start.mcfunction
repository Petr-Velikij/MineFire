scoreboard players set distance varTime 300
scoreboard players set detection varTime 0
tag @a[gamemode=!spectator,distance=10..160,tag=!team,tag=!tested,limit=1,scores={invisibility=0}] add select
execute facing entity @a[gamemode=!spectator,distance=10..160,tag=select,limit=1] eyes run function armor/predator/search/loop

execute if score detection varTime matches 1 run function armor/predator/search/test_marcer
execute if score detection varTime matches 1 facing entity @a[gamemode=!spectator,distance=10..160,tag=select,limit=1] feet positioned ^ ^ ^3.1 run function armor/predator/search/spawn_marcer
execute if score detection varTime matches 2 facing entity @a[gamemode=!spectator,distance=10..160,tag=select,limit=1] feet positioned ^ ^ ^4.4 as @e[type=armor_stand,tag=old,distance=..5] run function armor/predator/search/marcer
tag @a[gamemode=!spectator,distance=10..160,tag=select,limit=1] add tested
tag @a[gamemode=!spectator,distance=10..160,tag=select,limit=1] remove select
execute if entity @a[gamemode=!spectator,distance=10..160,tag=!team,tag=!tested,scores={invisibility=0}] run function armor/predator/search/start
tag @s add no_target

scoreboard players set @s ID.target 0
execute positioned ~ ~1.5 ~ if entity @a[gamemode=!spectator,distance=..150,tag=!no_target] run function gun/anfisa/auto/search_enemy
execute unless entity @a[tag=target,gamemode=!spectator] run kill @e[type=armor_stand,tag=marcer_enemy2,distance=..5]

tag @a remove target
tag @a remove no_target
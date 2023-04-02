execute if score @s Supply matches 16 run playsound minecraft:item.crossbow.loading_end player @a[distance=..7] ~ ~ ~ 1 0.5
execute if score @s Supply matches 10 run function minecraft:gun/zveroboj/gilza
execute if score @s Supply matches 5 run playsound minecraft:item.crossbow.loading_end player @a[distance=..7] ~ ~ ~ 1 1.5

scoreboard players remove @s Supply 1
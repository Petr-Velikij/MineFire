execute if score @s reload matches -1 run scoreboard players set @s reload 16
execute if score @s reload matches 16 run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 1 1.6
scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/zveroboj/reload
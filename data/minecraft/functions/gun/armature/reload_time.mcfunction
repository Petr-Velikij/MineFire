execute if score @s reload matches -1 run scoreboard players set @s reload 10
execute if score @s reload matches 10 run playsound custom.gun.armature.reload_2d_1 player @s ~ ~ ~ 1 1
scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/armature/reload
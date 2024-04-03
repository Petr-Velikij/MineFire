execute if score @s reload_pistol matches -1 run scoreboard players set @s reload_pistol 32
execute if score @s reload_pistol matches 26 run playsound custom.gun.armature.reload_2d_2 player @s ~ ~ ~ 1 0.8
execute if score @s reload_pistol matches 10 run playsound custom.gun.armature.reload_2d_1 player @s ~ ~ ~ 1 0.8
scoreboard players remove @s reload_pistol 1
execute if score @s reload_pistol matches 0 run function pistol/executioner/reload
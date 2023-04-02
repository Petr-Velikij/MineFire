execute if score @s reload matches -1 run scoreboard players set @s reload 18
execute if score @s reload matches 15 run playsound custom.gun.armature.reload_2d_2 player @s ~ ~1.6 ~ 0.6 0.8
execute if score @s reload matches 2 run playsound custom.gun.tessen.reload_2d player @s ~ ~1.6 ~ 0.6 0.8
scoreboard players remove @s reload 1
execute if score @s ID.armor matches 7 run scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/grenade_launcher/reload
execute if score @s reload_pistol matches -1 run scoreboard players set @s reload_pistol 10
execute if score @s reload_pistol matches 4 run playsound custom.gun.tessen.reload_2d player @s ~ ~1.6 ~ 0.6 1.2
scoreboard players remove @s reload_pistol 1
execute if score @s reload_pistol matches 0 run function pistol/gentleman/reload
execute if score @s reload matches -1 run scoreboard players set @s reload 16
#execute if score @s reload matches 16 run function gun/splitting/gilza
execute if score @s reload matches 4 run playsound custom.gun.tessen.reload_2d player @s ~ ~1.6 ~ 0.6 0.7
scoreboard players remove @s reload 1
execute if score @s reload matches 0 run function minecraft:gun/splitting/reload
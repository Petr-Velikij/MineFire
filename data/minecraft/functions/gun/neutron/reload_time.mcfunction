execute if score @s reload matches -1 run scoreboard players set @s reload 50
execute if score @s reload matches 50 run stopsound @s player custom.gun.neutron.overclocking_2d
execute if score @s reload matches 50 run function minecraft:gun/discharge
execute if score @s reload matches 50 run playsound custom.gun.neutron.reload_2d_1 player @s ~ ~ ~ 1 1
execute if score @s reload matches 36 run playsound custom.gun.neutron.reload_2d_2 player @s ~ ~ ~ 1 1
execute if score @s reload matches 18 run playsound custom.gun.neutron.reload_2d_3 player @s ~ ~ ~ 1 1
execute if score @s reload matches 10 run playsound custom.gun.neutron.reload_2d_4 player @s ~ ~ ~ 1 1

scoreboard players remove @s reload 1
execute if score @s reload matches 1 run function minecraft:gun/reload_all
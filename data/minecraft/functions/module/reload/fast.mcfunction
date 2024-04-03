scoreboard players set @s reload 0
scoreboard players set @s Supply 0
scoreboard players set @s reload_pistol 0
scoreboard players set @s Supply_pistol 0
function gun/ammo
function gun/reload_all
function gun/mat
playsound minecraft:custom.gun.amper.reload_2d_1 player @s ~ ~ ~ 1 1.2
scoreboard players set @s module_cooldown 600
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload
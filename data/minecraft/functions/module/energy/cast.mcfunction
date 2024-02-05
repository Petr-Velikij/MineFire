tag @s add Owner
particle minecraft:dust 0 1 1 1 ~ ~1 ~ 2.0 0.5 2.0 0 200 force @a[distance=..75]
playsound minecraft:custom.module.energy.stun_1d player @a[distance=..20] ~ ~1 ~ 2 1

execute as @a[gamemode=!spectator,distance=..5,tag=!Owner] at @s run function module/energy/give_stun

tag @s remove Owner
scoreboard players set @s module_cooldown 600
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload
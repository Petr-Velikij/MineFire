effect give @s absorption 20 2 false
playsound minecraft:block.beacon.activate player @a[distance=..80] ~ ~ ~ 6 1.5
playsound minecraft:block.beacon.activate player @a[distance=..80] ~ ~ ~ 6 1.2
playsound minecraft:block.beacon.activate player @a[distance=..80] ~ ~ ~ 6 1.0
scoreboard players set @s module_effect 400
scoreboard players set @s module_cooldown 1200
execute if score @s ID.armor matches 5 run function armor/engineer/fast_reload
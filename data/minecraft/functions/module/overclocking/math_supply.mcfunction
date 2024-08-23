scoreboard players operation *1 varTime = @s Supply
scoreboard players operation *1 varTime -= SetSupply varTime
scoreboard players operation *1 varTime *= *3 CONST

scoreboard players operation @s module_effect -= *1 varTime
execute if score @s module_effect matches ..0 run function module/overclocking/end
scoreboard players operation @s Supply = SetSupply varTime

playsound minecraft:custom.gun.sokol.supply_2d_2 player @s ~ ~ ~ 0.4 2
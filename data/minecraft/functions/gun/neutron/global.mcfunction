execute if score @s sneak_time matches 1 if score @s Power matches 101 run playsound custom.gun.neutron.overclocking_2d player @s ~ ~1.6 ~ 1 1
execute if score @s sneak_time matches 1 if score @s[nbt=!{SelectedItem:{tag:{Damage:465}}}] Power matches ..170 if score @s Supply matches 0 run scoreboard players add @s Power 1
execute if score @s sneak_time matches 0 if score @s Power matches 101.. run stopsound @s player custom.gun.neutron.overclocking_2d
execute if score @s sneak_time matches 0 if score @s Power matches 101.. run scoreboard players set @s Power 100
execute if score @s Power matches 171.. run function minecraft:gun/neutron/shot3
execute if score @s Power matches ..99 run scoreboard players set @s Power 100

execute if score @s reload matches 0 run function gun/neutron/print
execute if score @s PKM_2 matches 1.. run function minecraft:gun/neutron/shot

execute if entity @s[tag=!no_scope] if score @s sneak_time matches 0 run function minecraft:gun/model_no_pritsel
execute if entity @s[tag=no_scope] if score @s sneak_time matches 1 run function minecraft:gun/model_pritsel

execute if score @s Supply matches 1.. run scoreboard players remove @s Supply 1
execute unless score @s reload matches 0 run function minecraft:gun/neutron/reload_time
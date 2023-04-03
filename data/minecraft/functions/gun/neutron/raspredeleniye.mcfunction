execute if score SelectedItem ID.gun matches 1 run function minecraft:gun/neutron/global
execute if score SelectedItem ID.gun matches 0 if score @s Power matches 101.. run stopsound @s player custom.gun.neutron.overclocking_2d
execute if score SelectedItem ID.gun matches 0 if score @s Power matches 101.. run scoreboard players set @s Power 100
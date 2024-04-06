execute if score @s[tag=SelectedPistol] reloadGun matches 1 run function pistol/reload
execute if score @s[tag=SelectedPistol] reloadGun matches 1 if score @s ID.module matches 8 if score @s reload_pistol matches 1.. if score @s module_cooldown matches 0 run function module/reload/fast

execute store result score Inventory ID.pistol run data get entity @s Inventory[{}].tag.pistolID
scoreboard players set Offhand ID.pistol 0
execute if data entity @s Inventory[{Slot:-106b}].tag.pistolID run scoreboard players set Offhand ID.pistol 1


scoreboard players set SelectedItem ID.pistol 0
execute if data entity @s SelectedItem.tag.pistolID run scoreboard players set SelectedItem ID.pistol 1
execute if score SelectedItem ID.pistol matches 1 unless entity @s[tag=SelectedPistol] run function pistol/swap
tag @s remove SelectedPistol
execute if score SelectedItem ID.pistol matches 1 run tag @s add SelectedPistol

execute if score SelectedItem ID.pistol matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function gun/id_to_crossbow
execute if score Offhand ID.pistol matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function gun/id_to_stick

execute if score SelectedItem ID.pistol matches 1 if entity @s[scores={invisibility=1..},tag=!pistol_invisibility] run function module/invisibility/gun/set
execute if score SelectedItem ID.pistol matches 1 if entity @s[scores={invisibility=0},tag=pistol_invisibility] run function module/invisibility/gun/remove

execute if score SelectedItem ID.pistol matches 1 if score @s Supply_pistol matches 1 run function pistol/supply
execute if score SelectedItem ID.pistol matches 1 unless score @s reload_pistol matches 0 run function pistol/ammo

execute if score Inventory ID.pistol matches 1 if score SelectedItem ID.pistol matches 1 run function pistol/silent/global
execute if score Inventory ID.pistol matches 2 if score SelectedItem ID.pistol matches 1 run function pistol/executioner/global
execute if score Inventory ID.pistol matches 3 if score SelectedItem ID.pistol matches 1 run function pistol/cicada/global

execute if score @s reload_pistol matches -1 run scoreboard players set @s reload_pistol 0
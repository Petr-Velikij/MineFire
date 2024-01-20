execute if score @s[tag=SelectedGun] reloadGun matches 1 run function gun/reload

execute store result score Inventory ID.gun run data get entity @s Inventory[{}].tag.gunID
scoreboard players set Offhand ID.gun 0
execute if data entity @s Inventory[{Slot:-106b}].tag.gunID run scoreboard players set Offhand ID.gun 1


scoreboard players set SelectedItem ID.gun 0
execute if data entity @s SelectedItem.tag.gunID run scoreboard players set SelectedItem ID.gun 1
execute if score SelectedItem ID.gun matches 1 unless entity @s[tag=SelectedGun] run scoreboard players add @s Scatter 1000
tag @s remove SelectedGun
execute if score SelectedItem ID.gun matches 1 run tag @s add SelectedGun

scoreboard players operation idModule varTime = @s ID.module

execute if score SelectedItem ID.gun matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function minecraft:gun/id_to_crossbow
execute if score Offhand ID.gun matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function minecraft:gun/id_to_stick

execute if score SelectedItem ID.gun matches 1 if entity @s[scores={invisibility=1..},tag=!gun_invisibility] run function module/invisibility/gun/set
execute if score SelectedItem ID.gun matches 1 if entity @s[scores={invisibility=0},tag=gun_invisibility] run function module/invisibility/gun/remove

execute if score SelectedItem ID.gun matches 1 if score @s Supply matches 1 run function minecraft:gun/supply
execute if score SelectedItem ID.gun matches 1 unless score @s reload matches 0 run function minecraft:gun/ammo

scoreboard players remove @a[scores={no_reload=1..}] no_reload 1

function minecraft:mat/pos_delta
function minecraft:gun/scatter
attribute @s generic.movement_speed modifier remove 6b40a35f-cfa6-4474-bccd-4a606cb26d1f
#0 Автоматы
execute if score Inventory ID.gun matches 1 if score SelectedItem ID.gun matches 1 run function minecraft:gun/assault_rifle/global
execute if score Inventory ID.gun matches 2 run function minecraft:gun/bear/raspredeleniye
execute if score Inventory ID.gun matches 3 run function minecraft:gun/chastiser/raspredeleniye
execute if score Inventory ID.gun matches 3 unless score @s ID.armor matches 6 run attribute @s generic.movement_speed modifier add 6b40a35f-cfa6-4474-bccd-4a606cb26d1f "slowness" -0.1 multiply
execute if score Inventory ID.gun matches 4 if score SelectedItem ID.gun matches 1 run function minecraft:gun/ripper/global
#1 Марксманские
execute if score Inventory ID.gun matches 11 if score SelectedItem ID.gun matches 1 run function minecraft:gun/shtil/global
execute if score Inventory ID.gun matches 12 run function minecraft:gun/armature/raspredeleniye
execute if score Inventory ID.gun matches 13 if score SelectedItem ID.gun matches 1 run function minecraft:gun/darkness/global
execute if score Inventory ID.gun matches 14 run function minecraft:gun/neutron/raspredeleniye
#2 Снайперки
execute if score Inventory ID.gun matches 21 run function minecraft:gun/anfisa/raspredeleniye
execute if score Inventory ID.gun matches 22 if score SelectedItem ID.gun matches 1 run function minecraft:gun/sokol/global
execute if score Inventory ID.gun matches 22 unless score @s ID.armor matches 6 run attribute @s generic.movement_speed modifier add 6b40a35f-cfa6-4474-bccd-4a606cb26d1f "slowness" -0.1 multiply
execute if score Inventory ID.gun matches 23 if score SelectedItem ID.gun matches 1 run function minecraft:gun/leaves/global
execute if score Inventory ID.gun matches 24 if score SelectedItem ID.gun matches 1 run function minecraft:gun/railgun/global
execute if score Inventory ID.gun matches 24 unless score @s ID.armor matches 6 run attribute @s generic.movement_speed modifier add 6b40a35f-cfa6-4474-bccd-4a606cb26d1f "slowness" -0.1 multiply
#3 Дробовики
execute if score Inventory ID.gun matches 31 if score SelectedItem ID.gun matches 1 run function minecraft:gun/zveroboj/global
execute if score Inventory ID.gun matches 32 if score SelectedItem ID.gun matches 1 run function minecraft:gun/tessen/global
execute if score Inventory ID.gun matches 33 if score SelectedItem ID.gun matches 1 run function minecraft:gun/splitting/global
execute if score Inventory ID.gun matches 34 if score SelectedItem ID.gun matches 1 run function minecraft:gun/phoenix/global
#4 Гранатомёты и тд
execute if score Inventory ID.gun matches 41 if score SelectedItem ID.gun matches 1 run function minecraft:gun/grenade_launcher/global
execute if score Inventory ID.gun matches 42 run function minecraft:gun/locusts/raspredeleniye
execute if score Inventory ID.gun matches 43 if score SelectedItem ID.gun matches 1 run function minecraft:gun/makusya/global
#5 Энергетическое
execute if score Inventory ID.gun matches 51 run function minecraft:gun/marble/raspredeleniye
execute if score Inventory ID.gun matches 52 run function minecraft:gun/magma/raspredeleniye
execute if score Inventory ID.gun matches 53 run function minecraft:gun/amper/raspredeleniye
execute if score Inventory ID.gun matches 54 if score SelectedItem ID.gun matches 1 run function minecraft:gun/volt/global

execute if score @s reload matches -1 run scoreboard players set @s reload 0
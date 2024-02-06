execute if score @s[tag=SelectedGun] reloadGun matches 1 run function gun/reload
execute if score @s[tag=SelectedGun] reloadGun matches 1 if score @s ID.module matches 8 if score @s reload matches 1.. if score @s module_cooldown matches 0 run function module/reload/fast

execute store result score Inventory ID.gun run data get entity @s Inventory[{}].tag.gunID
scoreboard players set Offhand ID.gun 0
execute if data entity @s Inventory[{Slot:-106b}].tag.gunID run scoreboard players set Offhand ID.gun 1


scoreboard players set SelectedItem ID.gun 0
execute if data entity @s SelectedItem.tag.gunID run scoreboard players set SelectedItem ID.gun 1
execute if score SelectedItem ID.gun matches 1 unless entity @s[tag=SelectedGun] run scoreboard players add @s Scatter 1000
tag @s remove SelectedGun
execute if score SelectedItem ID.gun matches 1 run tag @s add SelectedGun

scoreboard players operation buf ID.module = @s ID.module
scoreboard players operation buf ID.armor = @s ID.armor

execute if score SelectedItem ID.gun matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function minecraft:gun/id_to_crossbow
execute if score Offhand ID.gun matches 1 if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function minecraft:gun/id_to_stick

execute if score SelectedItem ID.gun matches 1 if entity @s[scores={invisibility=1..},tag=!gun_invisibility] run function module/invisibility/gun/set
execute if score SelectedItem ID.gun matches 1 if entity @s[scores={invisibility=0},tag=gun_invisibility] run function module/invisibility/gun/remove

execute if score SelectedItem ID.gun matches 1 if score @s Supply matches 1 run function minecraft:gun/supply
execute if score SelectedItem ID.gun matches 1 unless score @s reload matches 0 run function minecraft:gun/ammo

execute if score SelectedItem ID.gun matches 1 if score @s StunGun matches 1.. run function gun/no_charged
execute if score SelectedItem ID.gun matches 1 if score @s[tag=StunGun] StunGun matches 0 run function module/energy/end_stun_gun

execute if score @s no_reload matches 1.. run scoreboard players remove @s no_reload 1

execute if score @s ID.module matches 1 if score Inventory ID.gun matches 51..54 if score SelectedItem ID.gun matches 1 if score @s reloadGun matches 1 if score @s module_cooldown matches 0 if entity @s[nbt={SelectedItem:{tag:{Damage:465}}}] run function module/energy/cast

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
#4 Гранатомёты и тд
execute if score Inventory ID.gun matches 41 if score SelectedItem ID.gun matches 1 run function minecraft:gun/grenade_launcher/global
execute if score Inventory ID.gun matches 43 run function minecraft:gun/makusya/raspredeleniye
#5 Энергетическое
execute if score Inventory ID.gun matches 51 run function minecraft:gun/marble/raspredeleniye
execute if score Inventory ID.gun matches 52 run function minecraft:gun/magma/raspredeleniye
execute if score Inventory ID.gun matches 53 run function minecraft:gun/amper/raspredeleniye
execute if score Inventory ID.gun matches 54 run function minecraft:gun/obsidian/raspredeleniye

execute if score @s reload matches -1 run scoreboard players set @s reload 0
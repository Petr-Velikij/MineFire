execute store result score *1 varTime run data get entity @s SelectedItem.tag.ammo
scoreboard players operation @s ammo_point += *1 varTime
execute if score *1 varTime matches ..200 run playsound minecraft:item.armor.equip_chain player @a[distance=..20] ~ ~1.6 ~ 1 1.2
execute if score *1 varTime matches 201..600 run playsound minecraft:item.armor.equip_chain player @a[distance=..20] ~ ~1.6 ~ 1.5 1
execute if score *1 varTime matches 601.. run playsound minecraft:item.armor.equip_chain player @a[distance=..20] ~ ~1.6 ~ 2 0.8
item replace entity @s weapon.mainhand with air
tag @s add no_target

execute positioned ~ ~1.5 ~ if entity @a[gamemode=!spectator,distance=..30,tag=!no_target] run function gun/anfisa/auto/search_enemy
#execute unless entity @a[gamemode=!spectator,tag=target,distance=..50] run tag @p[tag=owner,distance=..5] add target
#tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,tag=target,distance=..50] eyes

execute unless entity @p[gamemode=!spectator,tag=target] if score @s Power matches 130.. if score @s Anfisa matches 0 run function gun/anfisa/ii/no_target
execute unless entity @p[gamemode=!spectator,tag=target] run scoreboard players set @s Power 100
execute if entity @p[gamemode=!spectator,tag=target] run scoreboard players add @s Power 1
execute if score @s Power matches 130 if score @s Anfisa matches 0 run function gun/anfisa/ii/target
execute if score @s Power matches 130.. if score @s Supply matches 0 if score @s reload matches 0 unless entity @s[nbt={SelectedItem:{tag:{Damage:465}}}] run function minecraft:gun/anfisa/shot3

tag @a remove target
tag @a remove no_target
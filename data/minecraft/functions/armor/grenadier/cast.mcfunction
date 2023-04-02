execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~
execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]
scoreboard players set *YR.correct varTime 0
scoreboard players set coefficient Random 20
function minecraft:vector/get_vec
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/set_uuid
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:armor/grenadier/distorting_grenades/shot

playsound minecraft:item.flintandsteel.use player @s ~ ~1.6 ~ 2 0.7
playsound minecraft:item.armor.equip_leather player @s ~ ~1.6 ~ 2 0.7
scoreboard players add @s armor_cooldown 600
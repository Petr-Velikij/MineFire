execute if score @s sneak_time matches 0 run summon arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon arrow ~ ~1.1 ~
function gun/get_uuid
scoreboard players set *YR.correct varTime 0
scoreboard players set coefficient Random 20
function minecraft:vector/get_vec
scoreboard players operation *X varTime *= @s MotionGrenade
scoreboard players operation *Y varTime *= @s MotionGrenade
scoreboard players operation *Z varTime *= @s MotionGrenade
scoreboard players operation *1 varTime = @s Pos_dx
scoreboard players operation *2 varTime = @s Pos_dy
scoreboard players operation *3 varTime = @s Pos_dz
scoreboard players operation *1 varTime *= *5000 CONST
scoreboard players operation *2 varTime *= *5000 CONST
scoreboard players operation *3 varTime *= *5000 CONST
scoreboard players operation *X varTime += *1 varTime
scoreboard players operation *Y varTime += *2 varTime
scoreboard players operation *Z varTime += *3 varTime
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function gun/set_uuid
scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf ID.armor = @s ID.armor

playsound minecraft:item.flintandsteel.use player @s ~ ~1.6 ~ 2 0.7
playsound minecraft:item.armor.equip_leather player @s ~ ~1.6 ~ 2 0.7
execute if entity @s[gamemode=!creative] run item replace entity @s weapon.mainhand with air
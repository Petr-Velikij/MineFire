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

summon item ~ ~1 ~ {NoGravity:1b,PickupDelay:32767,Tags:["item_grenade","new"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function gun/set_uuid
data modify entity @e[type=item,tag=new,sort=nearest,limit=1] Item.tag set from entity @s SelectedItem.tag
scoreboard players operation @e[type=item,tag=new,sort=nearest,limit=1] ID.grenade = ID.global ID.grenade
tag @e[type=item,tag=new,sort=nearest,limit=1] remove new
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function grenade/give_id

scoreboard players operation buf ID.Owner = @s ID.Player
scoreboard players operation buf ID.armor = @s ID.armor

playsound minecraft:item.flintandsteel.use player @s ~ ~1.6 ~ 2 0.7
playsound minecraft:item.armor.equip_leather player @s ~ ~1.6 ~ 2 0.7
execute if entity @s[gamemode=!creative] run item replace entity @s weapon.mainhand with air
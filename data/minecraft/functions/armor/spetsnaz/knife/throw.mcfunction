execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~
summon armor_stand ~ ~1.2 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["knife"],Pose:{RightArm:[0f,-90f,-10f]},HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}
tp @e[type=armor_stand,tag=knife,limit=1,distance=..5,sort=nearest] ^-0.3 ^0.8 ^0.5 ~90 0
function minecraft:gun/get_uuid
scoreboard players operation buf ID.Owner = @s ID.Player
playsound entity.player.attack.sweep player @a[distance=..20] ~ ~1.6 ~ 1 1

#20 блоков
scoreboard players set *YR.correct varTime 6200
scoreboard players set coefficient Random 0
function minecraft:vector/get_vec
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function armor/spetsnaz/knife/set_data

scoreboard players set @s armor_cooldown 400
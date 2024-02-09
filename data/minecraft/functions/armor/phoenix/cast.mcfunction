execute if score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.5 ~
execute unless score @s sneak_time matches 0 run summon minecraft:arrow ~ ~1.1 ~
execute store result score UUID[0] varTime run data get entity @s UUID[0]
execute store result score UUID[1] varTime run data get entity @s UUID[1]
execute store result score UUID[2] varTime run data get entity @s UUID[2]
execute store result score UUID[3] varTime run data get entity @s UUID[3]
scoreboard players set *YR.correct varTime 5000
scoreboard players set coefficient Random 50
function minecraft:vector/get_vec
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:gun/set_uuid
scoreboard players operation buf ID.Owner = @s ID.Player
execute positioned ~ ~1 ~ as @e[type=arrow,tag=,sort=nearest,limit=1] run function minecraft:armor/phoenix/fire/shot

playsound minecraft:entity.illusioner.cast_spell player @a[distance=..20] ~ ~ ~ 2 1
scoreboard players add @s armor_cooldown 400
execute at @e[type=iron_golem,tag=debug,limit=1] as @e[type=arrow,tag=!debug_up,distance=..20] run function debug/damage/up_damage

execute store result score HP Debug run data get entity @e[type=iron_golem,tag=debug,limit=1] Health
scoreboard players set damage Debug 1000
scoreboard players operation damage Debug -= HP Debug
scoreboard players operation damage_f Debug = damage Debug
scoreboard players operation damage_f Debug %= *10 CONST
scoreboard players operation damage Debug /= *10 CONST
execute if score damage Debug matches 1.. run tellraw @a [{"text":"-"},{"score":{"name":"damage","objective":"Debug"}},{"text":"."},{"score":{"name":"damage_f","objective":"Debug"}}]
data modify entity @e[type=iron_golem,tag=debug,limit=1] Health set value 1000f
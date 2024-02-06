execute positioned as @s run playsound minecraft:custom.module.energy.stun_2d player @s ~ ~1.6 ~ 2 1
scoreboard players set @s Stun 120
scoreboard players set @s StunGun 20
scoreboard players set @s ID.module 0
tag @s add StunGun
damage @s 4 player_attack by @p[tag=Owner]
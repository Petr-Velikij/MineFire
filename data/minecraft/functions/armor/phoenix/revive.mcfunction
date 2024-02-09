tellraw @a [{"text":"Феникс ","color":"#FF7700"},{"selector":"@s"},{"text":" восстал из пепла!"}]
playsound minecraft:item.totem.use player @a[distance=..15] ~ ~ ~ 1 0.85
particle lava ~ ~1.6 ~ 0 0 0 0 30 force @a[distance=..175]

scoreboard players set @s deathCount 0
scoreboard players set @s armor_cooldown2 3600
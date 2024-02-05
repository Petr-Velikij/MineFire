scoreboard players operation buf ID.Owner = @s ID.Owner
execute as @e[distance=..10,tag=Mshild] if score @s ID.Owner = buf ID.Owner run tag @s add my_shild
playsound block.beacon.deactivate player @a[distance=..30] ~ ~1 ~ 1 1
kill @e[tag=my_shild,distance=..10]
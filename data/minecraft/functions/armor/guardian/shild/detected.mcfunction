scoreboard players operation buf ID.Owner = @e[type=arrow,tag=selected,distance=..15,limit=1] ID.Owner
execute as @a[gamemode=!spectator] if score @s ID.Player = buf ID.Owner run playsound item.shield.block player @s ~ ~ ~ 100 1.5
kill @e[type=arrow,tag=selected,distance=..15]
summon marker ~ ~ ~ {Tags:["particle"]}
execute as @e[type=marker,tag=particle,distance=..1,limit=1] run function armor/guardian/shild/particle
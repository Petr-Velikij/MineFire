kill @s[tag=kill]
execute if entity @s[tag=bullet_vixlop] run function gun/arrow/gun/vixlop
execute if entity @s[tag=bullet_sokol] run function gun/arrow/gun/sokol
execute if entity @s[tag=bullet_leaves] run function gun/arrow/gun/leaves
execute if entity @s[tag=bullet_ripper] if score @s ArrowLive matches 5 run scoreboard players set @s DamageHead 100
execute if entity @s[tag=rail] run function gun/arrow/gun/railgun
execute if entity @s[tag=zveroboj] run function gun/arrow/gun/zveroboj
execute if entity @s[tag=tessen] run function gun/arrow/gun/tessen
execute if entity @s[tag=splitting1] run function gun/arrow/gun/splitting/bullet1
execute if entity @s[tag=splitting2] run function gun/arrow/gun/splitting/bullet2
execute if entity @s[tag=phoenix] run function gun/arrow/gun/phoenix
execute if entity @s[tag=grenade_launcher] run function gun/arrow/gun/grenade_launcher/bullet
execute if entity @s[tag=locusts] run function gun/arrow/gun/locusts/bullet
execute if entity @s[tag=makusya] run function gun/arrow/gun/makusya/bullet
execute if entity @s[tag=marble] run function gun/arrow/gun/marble/bullet
execute if entity @s[tag=magma] run function gun/arrow/gun/magma/bullet
execute if entity @s[tag=amper] run tag @s add kill
execute if entity @s[tag=volt] run function gun/arrow/gun/volt
execute if entity @s[tag=shard] run tag @s add kill
execute if entity @s[tag=bullet_anfisa] unless score @s ID.target matches 0 run function gun/arrow/gun/anfisa/bullet

execute if entity @s[tag=flame_cust] run function armor/alchemist/fire/arrow_cust
execute if entity @s[tag=flame] run function armor/alchemist/fire/arrow

execute if entity @s[tag=distorting_grenades] run function armor/grenadier/distorting_grenades/global

execute if entity @s[tag=particle_crit] run particle crit ~ ~ ~ 0 0 0 0 1 force @a[distance=..70]
execute if score @s ArrowDamage matches 0..2 if entity @a[gamemode=!spectator,distance=..10] at @a[gamemode=!spectator,distance=..10] unless score @p ID.Player = @s ID.Owner run function gun/arrow/hit_test
kill @s[nbt={inGround:1b},tag=!no_kill_arrow]

scoreboard players add @s ArrowLive 1
execute if score @s ArrowLive matches 200 run kill @s[tag=!no_kill_arrow]
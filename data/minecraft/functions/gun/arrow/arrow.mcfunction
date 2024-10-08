kill @s[tag=kill]
kill @s[tag=]
execute if entity @s[tag=grenade] run function grenade/math/move

execute if entity @s[tag=bullet_sokol] run function gun/arrow/gun/sokol
execute if entity @s[tag=bullet_leaves] run function gun/arrow/gun/leaves
execute if entity @s[tag=bullet_ripper] if score @s ArrowLive matches 4 run scoreboard players set @s DamageHead 100
execute if entity @s[tag=rail] run function gun/arrow/gun/railgun
execute if entity @s[tag=zveroboj] run function gun/arrow/gun/zveroboj
execute if entity @s[tag=tessen] run function gun/arrow/gun/tessen
execute if entity @s[tag=splitting1] run function gun/arrow/gun/splitting/bullet1
execute if entity @s[tag=splitting2] run function gun/arrow/gun/splitting/bullet2
execute if entity @s[tag=grenade_launcher] run function gun/arrow/gun/grenade_launcher/bullet
execute if entity @s[tag=makusya] run function gun/arrow/gun/makusya/bullet
execute if entity @s[tag=marble] run function gun/arrow/gun/marble/bullet
execute if entity @s[tag=magma] run function gun/arrow/gun/magma/bullet
execute if entity @s[tag=amper] run tag @s add kill
execute if entity @s[tag=obsidian_shotgun] run function gun/arrow/gun/obsidian/bullet_shotgun
execute if entity @s[tag=obsidian_exp] run function gun/arrow/gun/obsidian/bullet
execute if entity @s[tag=shard] run tag @s add kill
execute if entity @s[tag=bullet_anfisa] unless score @s ID.target matches 0 run function gun/arrow/gun/anfisa/bullet
execute if entity @s[tag=neutron] run function gun/arrow/gun/neutron/bullet
execute if entity @s[tag=gorynych] run function gun/arrow/gun/gorynych
execute if entity @s[tag=starfall] run function gun/arrow/gun/starfall/bullet

execute if entity @s[tag=pistol] if score @s ArrowLive matches 5 run scoreboard players set @s DamageHead 100
execute if entity @s[tag=pistol] if score @s ArrowLive matches 6.. store result entity @s damage double 0.0092 run data get entity @s damage 100
execute if entity @s[tag=pistol] if score @s ArrowLive matches 12 run kill @s
execute if entity @s[tag=gentleman] run function gun/arrow/pistol/gentleman
execute if entity @s[tag=cricket] run tag @s add kill
execute if entity @s[tag=epiphany] run function gun/arrow/pistol/epiphany

execute if entity @s[tag=fragmentation_grenade] run function grenade/fragmentation/arrow
execute if entity @s[tag=emp_grenade] run function grenade/emp/arrow
execute if entity @s[tag=smoke_grenade] run function grenade/smoke/arrow

execute if entity @s[tag=knife] run function armor/spetsnaz/knife/arrow
execute if entity @s[tag=flame_cust] run function armor/phoenix/fire/arrow_cust
execute if entity @s[tag=flame] run function armor/phoenix/fire/arrow
execute if entity @s[tag=distorting_grenades] run function armor/grenadier/distorting_grenades/global

execute if entity @s[tag=particle_crit] run particle crit ~ ~ ~ 0 0 0 0 1 force @a[distance=..170]
execute if score @s ArrowDamage matches 0..2 if entity @a[gamemode=!spectator,distance=..10] at @a[gamemode=!spectator,distance=..10,limit=1,sort=nearest] unless score @p ID.Player = @s ID.Owner run function gun/arrow/hit_test
kill @s[nbt={inGround:1b},tag=!no_kill_arrow,tag=!no_kill_inGround]

scoreboard players add @s ArrowLive 1
execute if score @s ArrowLive matches 200 run kill @s[tag=!no_kill_arrow]
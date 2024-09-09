summon item ~ ~ ~ {NoGravity:1b,Age:5500,PickupDelay:32767,Tags:["item_grenade","new"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1200}}}
scoreboard players operation @e[type=item,tag=new,sort=nearest,limit=1] ID.grenade = ID.global ID.grenade
tag @e[type=item,tag=new,sort=nearest,limit=1] remove new
function grenade/give_id

data merge entity @s {NoGravity:1b,damage:5.5d,crit:0b,PierceLevel:3b,Tags:["starfall","grenade","no_kill_arrow"],SoundEvent:"item.flintandsteel.use"}
execute if score *1 varTime matches 1 run tag @s add up
scoreboard players set @s ArrowDamage 1
scoreboard players set @s DamageHead 100
scoreboard players set @s DamageLegs 100
scoreboard players operation @s ID.Owner = buf ID.Owner
execute store result entity @s Motion[0] double 0.00025 run scoreboard players get *X varTime
execute store result entity @s Motion[1] double 0.00025 run scoreboard players get *Y varTime
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get *Z varTime
execute if score buf ID.module matches 5 run function module/overclocking/up_speed
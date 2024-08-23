forceload add 0 0
fill -1 -64 -1 1 -62 1 minecraft:bedrock
setblock 0 -64 0 minecraft:yellow_shulker_box
summon minecraft:armor_stand 0 -64 0 {UUID:[I;0,0,0,0],Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["NO"]}

function const
scoreboard objectives add ID.Owner dummy
scoreboard objectives add ID.Player dummy
scoreboard players set ID.global ID.Player 1
execute as @a run function give_id_player
scoreboard objectives add ID.Team dummy
scoreboard players set @a[team=A] ID.Team 1
scoreboard players set @a[team=B] ID.Team 2
scoreboard players set @a[team=C] ID.Team 3
scoreboard players set @a[team=D] ID.Team 4
scoreboard objectives add ID.module dummy
scoreboard objectives add ID.gun dummy
scoreboard objectives add ID.pistol dummy
scoreboard objectives add ID.armor dummy
scoreboard objectives add ID.target dummy
scoreboard players set @a ID.target 0
scoreboard objectives add Supply dummy
scoreboard players set @a Supply 0
scoreboard objectives add Supply_pistol dummy
scoreboard players set @a Supply_pistol 0
scoreboard objectives add ammo dummy
scoreboard objectives add ammo_point dummy
scoreboard players set @a ammo_point 720
execute as @a[gamemode=!spectator] run function gun/ammo
scoreboard objectives add price_cartridge dummy
scoreboard objectives add reload dummy
scoreboard players set @a reload 0
scoreboard objectives add reload_pistol dummy
scoreboard players set @a reload_pistol 0
scoreboard objectives add no_reload dummy
scoreboard players set @a no_reload 0
scoreboard objectives add modeFire dummy
scoreboard players set @a modeFire 1
scoreboard objectives add Loop dummy
scoreboard objectives add Power dummy
scoreboard players set @a Power 100
scoreboard objectives add Heat dummy
scoreboard players set @a Heat 0
scoreboard objectives add health_cooldown dummy
scoreboard players set @a health_cooldown 0
scoreboard objectives add color_camouflage dummy
scoreboard objectives add armor_cooldown dummy
scoreboard players set @a armor_cooldown 0
scoreboard objectives add armor_cooldown2 dummy
scoreboard players set @a armor_cooldown2 0
scoreboard objectives add armor_cooldown3 dummy
scoreboard players set @a armor_cooldown3 0
execute as @a run attribute @s generic.max_health modifier remove 57bf3738-52d8-452d-8ceb-99973f78148c
scoreboard objectives add Stun dummy
scoreboard players set @a Stun 0
scoreboard objectives add StunGun dummy
scoreboard players set @a StunGun 0
kill @e[tag=Mshild]
kill @e[type=armor_stand,tag=knife]
kill @e[type=skeleton,tag=bait]
tp @e[type=chest_minecart,tag=airdrop] 0 -1000 0

scoreboard objectives add invisibility dummy
execute as @a[scores={invisibility=1..}] run function module/invisibility/remove
scoreboard players set @a invisibility 0
scoreboard objectives add module_cooldown dummy
scoreboard players set @a module_cooldown 0
scoreboard objectives add module_effect dummy
scoreboard players set @a module_effect 0

scoreboard objectives add breath dummy
scoreboard players set @a breath 0
scoreboard objectives add stamina dummy
scoreboard players set @a stamina 1000
scoreboard objectives add stamina2 dummy
scoreboard players set @a stamina2 1000
scoreboard objectives add stamina_cooldown dummy
scoreboard players set @a stamina_cooldown 100

scoreboard objectives add Pos_x dummy
scoreboard objectives add Pos_y dummy
scoreboard objectives add Pos_z dummy
scoreboard objectives add Pos_x2 dummy
scoreboard objectives add Pos_y2 dummy
scoreboard objectives add Pos_z2 dummy
scoreboard objectives add Pos_delta dummy
scoreboard objectives add East_x dummy
scoreboard objectives add East_x2 dummy
scoreboard objectives add East_y dummy
scoreboard objectives add East_y2 dummy
scoreboard objectives add Scatter dummy
scoreboard objectives add Debug dummy

scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add crouch_one_cm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add sprint_one_cm minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add damage_taken minecraft.custom:damage_taken
scoreboard objectives add damage_absorbed minecraft.custom:damage_absorbed
scoreboard objectives add aviate_one_cm minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add food food
scoreboard objectives add health health
scoreboard objectives add deathCount deathCount
scoreboard objectives add PKM_1 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add PKM_2 minecraft.used:minecraft.crossbow
scoreboard objectives add Time_PKM_2 dummy 
scoreboard players set @a Time_PKM_2 99
scoreboard objectives add player_hurt dummy
scoreboard objectives add reloadGun minecraft.dropped:minecraft.crossbow
scoreboard objectives add ArrowDamage dummy
scoreboard objectives add DamageHead dummy
scoreboard objectives add DamageLegs dummy
scoreboard objectives add PlayerHead dummy
scoreboard objectives add ArrowLive dummy
scoreboard objectives add ex_damage dummy
scoreboard objectives add player_hit_x dummy
scoreboard objectives add player_hit_y dummy
scoreboard objectives add player_hit_z dummy
scoreboard objectives add sqrt dummy
scoreboard objectives add varTime dummy
scoreboard objectives add varTimeEntity1 dummy
scoreboard objectives add varTimeEntity2 dummy
scoreboard objectives add varTimeEntity3 dummy
scoreboard objectives add Random dummy

scoreboard objectives add Anfisa dummy
scoreboard players set @a Anfisa 0
tag @a remove hello
tag @a remove ammo_low
tag @a remove ammo_no
tag @a remove hit

tag @a remove camouflage_gun
tag @a remove no_scope
tag @a remove armor
tag @a remove crawl
tag @a remove StunGun
tag @a remove custom_invisibility
tag @a remove bad_custom_invisibility
tag @a remove NoKickback
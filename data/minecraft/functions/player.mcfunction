clear @s #clear_artifacts
scoreboard players operation @s damage_taken += @s damage_absorbed

execute if score @s PlayerHead matches 1.. if score @s player_hurt matches 1.. run playsound entity.player.attack.crit player @s ~ ~100 ~ 100 1
scoreboard players set @s PlayerHead 0

execute if block ~ ~ ~ #no_collider run spawnpoint @s ~ ~ ~ ~ 
function sound/master

execute if score @s Stun matches 1.. run function module/energy/stun
execute if score @s Stun matches 0 run function module/start
function mat/pos_delta
function gun/start
function grenade/start
function armor/start
function heat

function stamina/global
execute if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.ammo at @s run function game/loot/give_ammo
function health/global

execute if score @s[tag=!custom_invisibility] invisibility matches 1.. run function module/invisibility/effect
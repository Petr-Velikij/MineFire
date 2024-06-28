scoreboard players set @s armor_cooldown 400

function armor/flickering/bait/summon

execute if score @s invisibility matches 0 run function armor/save
scoreboard players add @s invisibility 200
function module/invisibility/set
tag @s add custom_invisibility
tag @s add bad_custom_invisibility
effect give @s blindness 11 1 true
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force @a[distance=..125]
playsound minecraft:entity.enderman.teleport player @a[distance=..20] ~ ~1.6 ~ 1 1
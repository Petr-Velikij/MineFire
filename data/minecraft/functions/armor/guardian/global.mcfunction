execute if score @s jump matches 1 run playsound minecraft:item.armor.equip_netherite player @a[distance=..20] ~ ~1 ~ 1 2

execute if entity @s[nbt={OnGround:0b},tag=!NoOnGround] run tag @s add NoOnGround
execute if entity @s[nbt={OnGround:0b},tag=NoOnGround] store result score @s armor_cooldown2 run data get entity @s FallDistance 10
execute if entity @s[nbt={OnGround:1b},tag=NoOnGround] if score @s armor_cooldown2 matches 15.. run playsound minecraft:item.armor.equip_netherite player @a[distance=..20] ~ ~1 ~ 2 0.2
execute if entity @s[nbt={OnGround:1b},tag=NoOnGround] run tag @s remove NoOnGround

execute if data entity @s {HurtTime:9s} run playsound minecraft:item.shield.block player @a[distance=..20] ~ ~1 ~ 2 1.3

execute if score @s armor_cooldown matches 0 if score @s PKM_1 matches 1 if data entity @s SelectedItem.tag.armor_active rotated ~ 0 run function armor/guardian/shild/spawn
execute unless score @s armor_cooldown matches 0 if data entity @s SelectedItem.tag.armor_active run function armor/cd
scoreboard players remove @s[scores={armor_cooldown=1..}] armor_cooldown 1
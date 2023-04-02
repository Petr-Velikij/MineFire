execute if score @s jump matches 1 run playsound minecraft:item.armor.equip_netherite player @a[distance=..20] ~ ~1 ~ 1 2

execute if entity @s[nbt={OnGround:0b},tag=!NoOnGround] run tag @s add NoOnGround
execute if entity @s[nbt={OnGround:1b},tag=NoOnGround] run playsound minecraft:item.armor.equip_netherite player @a[distance=..20] ~ ~1 ~ 2 0.2
execute if entity @s[nbt={OnGround:1b},tag=NoOnGround] run tag @s remove NoOnGround

execute if data entity @s {HurtTime:9s} run playsound minecraft:item.shield.block player @a[distance=..20] ~ ~1 ~ 2 1.3
particle minecraft:smoke ~ ~ ~ 0 0 0 0.02 3 force @a[distance=..75]
execute if entity @s[nbt={inGround:1b}] run data merge entity @s {SoundEvent:"minecraft:item.flintandsteel.use",inGround:0b}
execute positioned ~ ~-1 ~ if entity @e[nbt={HurtTime:9s},distance=..2,sort=nearest] run function armor/grenadier/bunch_grenades/explosion
execute if score @s ArrowLive matches 199 run function armor/grenadier/bunch_grenades/explosion
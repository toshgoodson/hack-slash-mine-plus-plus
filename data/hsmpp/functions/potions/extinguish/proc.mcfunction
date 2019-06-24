execute at @e[tag=hsmpp_potion_extinguish,tag=hsmpp_potion_marker_landed] run particle minecraft:poof ~ ~ ~ 0 0 0 0.2 400
execute at @e[tag=hsmpp_potion_extinguish,tag=hsmpp_potion_marker_landed] run fill ~-3 ~-2 ~-3 ~3 ~2 ~3 minecraft:air replace minecraft:fire

execute at @e[tag=hsmpp_potion_extinguish,tag=hsmpp_potion_marker_landed] run execute positioned ~-3 ~-2 ~-3 run execute as @e[dx=6,dy=4,dz=6] run data modify entity @s Fire set value 0

execute at @e[tag=hsmpp_potion_extinguish,tag=hsmpp_potion_marker_landed] run execute positioned ~-3 ~-2 ~-3 run execute at @p[dx=6,dy=4,dz=6] run fill ~ ~1 ~ ~ ~1 ~ minecraft:water[level=7] replace minecraft:air
execute at @e[tag=hsmpp_potion_extinguish,tag=hsmpp_potion_marker_landed] run execute positioned ~-3 ~-2 ~-3 run execute at @p[dx=6,dy=4,dz=6] run fill ~ ~1 ~ ~ ~1 ~ minecraft:water[level=7] replace minecraft:cave_air
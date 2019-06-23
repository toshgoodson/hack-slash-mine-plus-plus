execute at @e[tag=hsmpp_potion_cactus,tag=hsmpp_potion_marker_landed] run fill ~ ~ ~ ~ ~ ~ minecraft:cactus replace minecraft:air
execute at @e[tag=hsmpp_potion_cactus,tag=hsmpp_potion_marker_landed] run fill ~ ~ ~ ~ ~ ~ minecraft:cactus replace minecraft:cave_air
execute at @e[tag=hsmpp_potion_cactus,tag=hsmpp_potion_marker_landed] run fill ~ ~ ~ ~ ~ ~ minecraft:cactus replace minecraft:water
execute at @e[tag=hsmpp_potion_cactus,tag=hsmpp_potion_marker_landed] run fill ~ ~ ~ ~ ~ ~ minecraft:cactus replace minecraft:lava
execute at @e[tag=hsmpp_potion_cactus,tag=hsmpp_potion_marker_landed] run fill ~ ~ ~ ~ ~ ~ minecraft:cactus replace minecraft:grass

#execute at @e[tag=hsmpp_potion_cactus,tag=hsmpp_potion_marker_landed] run summon minecraft:armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, Small: 1b, ArmorItems:[{},{},{},{id:"minecraft:cactus",Count:1}], Pose:{Head:[180f,0f,0f]}, Tags: ["hsmpp_potion_action", "hsmpp_potion_cactus"]}
#/summon minecraft:chest_minecart ~ ~ ~ {Tags: ["hsmpp_crafting_table"], CustomName: "\"Hack/Mine++ Crafting\"", DisplayState: {Name: "minecraft:crafting_table"}, CustomDisplayTile: 1b, DisplayOffset: 4, Invulnerable: 1b}

execute as @e[tag=hsmpp_crafting_table] run data modify entity @s Motion set value [0.0,0.0,0.0]

tag @e[tag=hsmpp_crafting_table] add hsmpp_c_13_air
tag @e[tag=hsmpp_crafting_table,nbt={Items: [{Slot: 13b}]}] remove hsmpp_c_13_air

tag @e[tag=hsmpp_crafting_table] remove hsmpp_c_13_dirt
tag @e[tag=hsmpp_crafting_table, nbt={Items: [{id: "minecraft:dirt", Count: 1b, Slot: 13b}]}] add hsmpp_c_13_dirt

tag @e[tag=hsmpp_crafting_table] remove hsmpp_c_1_dirt
tag @e[tag=hsmpp_crafting_table, nbt={Items: [{id: "minecraft:dirt", Count: 1b, Slot: 0b}]}] add hsmpp_c_1_dirt

tag @e[tag=hsmpp_crafting_table] remove hsmpp_can_craft_test
tag @e[tag=hsmpp_crafting_table,tag=hsmpp_c_1_dirt] add hsmpp_can_craft_test


execute as @e[tag=hsmpp_crafting_table,tag=!hsmpp_can_craft_test,tag=hsmpp_produced_test,tag=hsmpp_c_13_dirt] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 13b}
tag @e[tag=hsmpp_crafting_table,tag=!hsmpp_can_craft_test,tag=hsmpp_produced_test,tag=hsmpp_c_13_dirt] remove hsmpp_produced_test

execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_can_craft_test,tag=hsmpp_produced_test,tag=!hsmpp_c_13_dirt] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 0b}
tag @e[tag=hsmpp_crafting_table,tag=hsmpp_can_craft_test,tag=hsmpp_produced_test,tag=!hsmpp_c_13_dirt] remove hsmpp_produced_test

execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_can_craft_test,tag=hsmpp_c_13_air] run data modify entity @s Items append value {id: "minecraft:dirt", Count: 1b, Slot: 13b}
tag @e[tag=hsmpp_crafting_table,tag=hsmpp_can_craft_test,tag=hsmpp_c_13_air] add hsmpp_produced_test
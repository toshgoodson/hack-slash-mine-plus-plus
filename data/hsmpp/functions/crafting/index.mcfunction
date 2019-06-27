#execute as @e[tag=hsmpp_crafting_table,nbt={Items: [{id: "minecraft:dirt", Slot: 0b}, {id: "minecraft:dirt", Slot: 0b}]}] 

#scoreboard players set @e[tag=hsmpp_crafting_table] hsmpp_craft_out 0
#scoreboard players set @e[tag=hsmpp_crafting_table,nbt={Items: [{Slot: 13b}]}] hsmpp_craft_out 1

# tag @e[tag=hsmpp_crafting_table] add hsmpp_crafting_result_air
# tag @e[tag=hsmpp_crafting_table,nbt={Items: [{Slot: 13b}]}] remove hsmpp_crafting_result_air
# 
# tag @e[tag=hsmpp_crafting_table] remove hsmpp_crafting_result_dirt
# tag @e[tag=hsmpp_crafting_table, nbt={Items: [{id: "minecraft:dirt", Count: 1b, Slot: 13b}]}] add hsmpp_crafting_result_dirt
# 
# tag @e[tag=hsmpp_crafting_table] remove hsmpp_crafting_1_dirt
# tag @e[tag=hsmpp_crafting_table, nbt={Items: [{id: "minecraft:dirt", Count: 1b, Slot: 0b}]}] add hsmpp_crafting_1_dirt
# 
# execute as @e[tag=hsmpp_crafting_table,tag=!hsmpp_crafting_result_dirt,tag=hsmpp_crafting_possible_dirt] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 0b}
# tag @e[tag=hsmpp_crafting_table,tag=!hsmpp_crafting_result_dirt,tag=hsmpp_crafting_possible_dirt] remove hsmpp_crafting_active
# 
# tag @e[tag=hsmpp_crafting_table] remove hsmpp_crafting_possible_dirt
# tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_1_dirt] add hsmpp_crafting_possible_dirt
# 
# execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_result_dirt,tag=!hsmpp_crafting_possible_dirt,tag=hsmpp_crafting_active] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 13b}
# tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_result_dirt,tag=!hsmpp_crafting_possible_dirt,tag=hsmpp_crafting_active] remove hsmpp_crafting_active
# execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_result_air,tag=hsmpp_crafting_possible_dirt] run data modify entity @s Items append value {id: "minecraft:dirt", Count: 1b, Slot: 13b}
# tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_result_air,tag=hsmpp_crafting_possible_dirt] add hsmpp_crafting_active


#execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_produced_dirt,tag=!hsmpp_crafting_result_dirt] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 0b}
#tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_produced_dirt,tag=!hsmpp_crafting_result_dirt] remove hsmpp_crafting_produced_dirt


#execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_produced_dirt,tag=!hsmpp_crafting_1_dirt] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 13b}
#tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_produced_dirt,tag=!hsmpp_crafting_1_dirt] remove hsmpp_crafting_produced_dirt

#execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_result_air,tag=hsmpp_crafting_1_dirt] run data modify entity @s Items append value {id: "minecraft:dirt", Count: 1b, Slot: 13b}
#tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_result_air,tag=hsmpp_crafting_1_dirt] add hsmpp_crafting_produced_dirt





#execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_test_primed,nbt={id: "minecraft:dirt", Count: 1b, Slot: 13b}] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 13b}

#tag @e[tag=hsmpp_crafting_table] remove hsmpp_crafting_test_primed
#tag @e[tag=hsmpp_crafting_table, tag=hsmpp_crafting_output_open, nbt={Items: [{Slot:0b,id:"minecraft:dirt",Count:1b}]}] add hsmpp_crafting_test_primed
#execute as @e[tag=hsmpp_crafting_table, tag=hsmpp_crafting_test_primed, tag=hsmpp_crafting_output_open] run data modify entity @s Items append value {id: "minecraft:dirt", Count: 1b, Slot: 13b} 


#execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_output_open] run data modify entity @s Items append value {id: "minecraft:air", Count: 1b, Slot: 13b}

#tag @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_test_primed,tag=hsmpp_crafting_output_open] add hsmpp_crafting_temp_result
#execute as @e[tag=hsmpp_crafting_table,tag=hsmpp_crafting_test_primed,tag=hsmpp_crafting_output_open,] run data modify entity @s Items append value {id: "minecraft:dirt", Count: 1b, Slot: 13b} 


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
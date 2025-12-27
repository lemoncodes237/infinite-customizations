tag @s add inf_player_temp
data remove entity @e[type=interaction,tag=inf_magic,distance=..0,limit=1] interaction

execute if entity @e[type=interaction,tag=inf_magic,tag=inf_taken,distance=..0] run return run function infcust:place/take

execute if items entity @s weapon.mainhand *[custom_data~{inf_customized:1}] run return 0

execute as @e[type=interaction,tag=inf_magic_table,distance=..0] run function infcust:place/main/interact
execute if entity @e[type=interaction,tag=inf_diamond,distance=..0] run data modify storage infcust:temp gem set value "diamond"
execute if entity @e[type=interaction,tag=inf_emerald,distance=..0] run data modify storage infcust:temp gem set value "emerald"
execute if entity @e[type=interaction,tag=inf_gold,distance=..0] run data modify storage infcust:temp gem set value "gold"
execute if entity @e[type=interaction,tag=inf_netherite,distance=..0] run data modify storage infcust:temp gem set value "netherite"

scoreboard players operation #temp inf-id = @e[type=interaction,tag=inf_magic,distance=..0] inf-id

scoreboard players set #type inf-id 0

execute as @e[type=interaction,tag=inf_magic_table,distance=..2.5,tag=inf_already_crafted] if score @s inf-id = #temp inf-id if entity @s run return 0

execute unless entity @e[type=interaction,tag=inf_magic_table,distance=..2.5,tag=inf_taken] run return 0

execute as @e[type=interaction,tag=inf_magic_table,distance=..2.5,tag=inf_taken] if score @s inf-id = #temp inf-id run function infcust:place/main/get_type

execute if score #type inf-id matches 1 run data modify storage infcust:temp type set value "boots"
execute if score #type inf-id matches 2 run data modify storage infcust:temp type set value "leggings"
execute if score #type inf-id matches 3 run data modify storage infcust:temp type set value "chestplate"
execute if score #type inf-id matches 4 run data modify storage infcust:temp type set value "helmet"
execute if score #type inf-id matches 5 run data modify storage infcust:temp type set value "sword"
execute if score #type inf-id matches 6 run data modify storage infcust:temp type set value "pickaxe"

function infcust:place/create_item with storage infcust:temp
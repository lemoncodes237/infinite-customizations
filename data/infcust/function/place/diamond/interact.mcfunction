scoreboard players operation #temp inf-id = @s inf-id

scoreboard players set #type inf-id 0

execute at @s as @e[type=interaction,tag=inf_magic_table,distance=..2.5,tag=inf_taken] if score @s inf-id = #temp inf-id run function infcust:place/main/get_type

execute if score #type inf-id matches 1 run function infcust:place/diamond/boots
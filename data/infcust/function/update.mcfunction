scoreboard players set #check-time inf-time 0

execute at @a as @e[type=interaction,tag=inf_magic_table,distance=..10] at @s on attacker run function infcust:player_break_table
execute at @a as @e[type=interaction,tag=inf_magic,distance=..10] at @s on target run function infcust:place/interact
tag @a remove inf_player_temp
tag @a remove inf_crafter

execute at @a as @e[type=item,tag=!inf_updated,distance=..10] run function infcust:item_update/update
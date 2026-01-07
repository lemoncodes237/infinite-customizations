scoreboard players set #check-time inf-time 0
scoreboard players add #armor-check-time inf-time 1
execute if score #armor-check-time inf-time matches 5.. run function infcust:armor_check

execute as @e[type=interaction,tag=inf_magic_table] at @s on attacker run function infcust:player_break_table
execute as @e[type=interaction,tag=inf_magic] at @s on target run function infcust:place/interact
tag @a remove inf_player_temp
tag @a remove inf_crafter

execute at @a as @e[type=item,tag=!inf_updated] run function infcust:item_update/update


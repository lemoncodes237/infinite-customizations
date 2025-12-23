tellraw @a[tag=inf_place_table_temp] "You cannot place down a magic table this close to another one!"
kill @s
execute as @a[tag=inf_place_table_temp] run function infcust:give_table
tag @a remove inf_place_table_temp
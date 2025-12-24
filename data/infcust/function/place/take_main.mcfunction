execute as @e[type=item,tag=inf_ingredient,distance=..2] run data merge entity @s {NoGravity:false,PickupDelay:0}
tp @e[type=item,tag=inf_ingredient,distance=..2] @s

execute positioned ~ ~-1.5 ~ as @e[type=interaction,tag=inf_magic_table,tag=inf_taken,distance=..0] run function infcust:place/remove_tags

scoreboard players operation #temp inf-id = @e[type=interaction,tag=inf_magic_table,tag=inf_taken,distance=..0] inf-id
execute as @e[type=interaction,tag=inf_magic,distance=..2] if score @s inf-id = #temp inf-id run tag @s remove inf_taken
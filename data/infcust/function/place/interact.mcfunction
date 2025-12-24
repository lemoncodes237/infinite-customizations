tag @s add inf_player_temp
data remove entity @e[type=interaction,tag=inf_magic,distance=..0,limit=1] interaction

execute if entity @e[type=interaction,tag=inf_magic,tag=inf_taken,distance=..0] run return run function infcust:place/take

execute if items entity @s weapon.mainhand *[custom_data~{inf_customized:1}] run return 0

execute as @e[type=interaction,tag=inf_magic_table,distance=..0] run function infcust:place/main/interact
execute as @e[type=interaction,tag=inf_diamond,distance=..0] run function infcust:place/diamond/interact
execute as @e[type=interaction,tag=inf_emerald,distance=..0] run function infcust:place/emerald/interact
execute as @e[type=interaction,tag=inf_gold,distance=..0] run function infcust:place/gold/interact
execute as @e[type=interaction,tag=inf_netherite,distance=..0] run function infcust:place/netherite/interact
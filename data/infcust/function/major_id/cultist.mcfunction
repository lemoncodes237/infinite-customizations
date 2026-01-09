tag @s add inf_immune_temp

scoreboard players set #withertemp inf-id -1
execute at @s as @e[type=#infcust:enemies,distance=..10,predicate=infcust:is_withered,tag=!inf_immune_temp] run scoreboard players add #withertemp inf-id 1
execute if score #withertemp inf-id matches 5.. run scoreboard players set #withertemp inf-id 4
execute store result storage infcust:cultist amp int 1 run scoreboard players get #withertemp inf-id

execute if score #withertemp inf-id matches 0.. run function infcust:major_id/cultist_macro with storage infcust:cultist

tag @s remove inf_immune_temp
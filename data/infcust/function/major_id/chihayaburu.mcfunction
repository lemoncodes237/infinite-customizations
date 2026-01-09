tag @s add inf_immune_temp

execute if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air run effect give @e[type=#infcust:enemies,distance=..8,tag=!inf_immune_temp] slowness 3 1

tag @s remove inf_immune_temp
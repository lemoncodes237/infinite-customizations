tag @s add inf_immune_temp

particle explosion ~ ~ ~ 1 1 1 0 5
execute as @e[type=#infcust:enemies,distance=..7,tag=!inf_immune_temp] run damage @s 10 infcust:no_cooldown by @a[tag=inf_immune_temp,limit=1]
damage @s 1 infcust:no_cooldown by @s

tag @s remove inf_immune_temp

playsound entity.generic.explode master @a ~ ~ ~
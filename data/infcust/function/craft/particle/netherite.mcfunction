data modify storage infcust:craft name set from entity @s Item.components."minecraft:item_name"
data modify storage infcust:craft color set value "dark_gray"
execute store result storage infcust:craft rollvalue int 1 run scoreboard players get #netheriterv inf-id
execute if score #netheriterv inf-id matches 0..20 run data modify storage infcust:craft rollcolor set value "dark_red"
execute if score #netheriterv inf-id matches 21..39 run data modify storage infcust:craft rollcolor set value "red"
execute if score #netheriterv inf-id matches 40..60 run data modify storage infcust:craft rollcolor set value "yellow"
execute if score #netheriterv inf-id matches 61..79 run data modify storage infcust:craft rollcolor set value "green"
execute if score #netheriterv inf-id matches 80..99 run data modify storage infcust:craft rollcolor set value "aqua"
execute if score #netheriterv inf-id matches 100 run data modify storage infcust:craft rollcolor set value "dark_purple"

execute positioned ~ ~-0.43 ~-1.05 as @e[type=item,distance=..1,tag=inf_main,limit=1,sort=nearest] run function infcust:craft/particle/roll_value with storage infcust:craft

kill @s
particle dust{color:[0.129,0.129,0.129],scale:1} ~ ~ ~ 0.3 0.3 0.3 0 10
execute unless predicate infcust:on_ground run return 0

summon marker ~ ~ ~ {Tags:["inf_malady_temp","inf_malady_cloud"]}
scoreboard players operation @e[type=marker,tag=inf_malady_temp,distance=..1,limit=1] inf-id = @s inf-id
tag @e[type=marker,tag=inf_malady_temp,distance=..1,limit=1] remove inf_malady_temp
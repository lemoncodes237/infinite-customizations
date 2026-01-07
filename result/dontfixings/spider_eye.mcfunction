scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-atk"
data modify storage infcust:craft min set value -10
data modify storage infcust:craft max set value -3
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 10
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id

scoreboard players set #inf-venomous inf-id 1

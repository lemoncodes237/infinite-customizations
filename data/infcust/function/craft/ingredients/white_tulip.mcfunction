scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-speed"
data modify storage infcust:craft min set value 5
data modify storage infcust:craft max set value 18
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 5
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-atk"
data modify storage infcust:craft min set value -8
data modify storage infcust:craft max set value -4
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 8
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players set #divide inf-id 2
scoreboard players operation #rollvalue inf-id /= #divide inf-id

scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-armor"
data modify storage infcust:craft min set value 10
data modify storage infcust:craft max set value 25
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 10
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-speed"
data modify storage infcust:craft min set value -15
data modify storage infcust:craft max set value -5
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 15
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-toughness"
data modify storage infcust:craft min set value 5
data modify storage infcust:craft max set value 15
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 5
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


scoreboard players remove #temp inf-unbreaking 1


scoreboard players set #divide inf-id 3
scoreboard players operation #rollvalue inf-id /= #divide inf-id

scoreboard players add #temp inf-cost 5

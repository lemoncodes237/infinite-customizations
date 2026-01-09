scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-depthstrider"
data modify storage infcust:craft min set value 1
data modify storage infcust:craft max set value 2
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 1
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-featherfalling"
data modify storage infcust:craft min set value 1
data modify storage infcust:craft max set value 2
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 1
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-hp"
data modify storage infcust:craft min set value -20
data modify storage infcust:craft max set value -10
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 20
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players set #divide inf-id 3
scoreboard players operation #rollvalue inf-id /= #divide inf-id

scoreboard players add #temp inf-cost 5

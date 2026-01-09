scoreboard players set #rollvalue inf-id 0

data modify storage infcust:craft stat set value "inf-hp"
data modify storage infcust:craft min set value -100
data modify storage infcust:craft max set value -40
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 100
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-armor"
data modify storage infcust:craft min set value -60
data modify storage infcust:craft max set value -30
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 60
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-toughness"
data modify storage infcust:craft min set value -30
data modify storage infcust:craft max set value -10
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 30
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-kbres"
data modify storage infcust:craft min set value -20
data modify storage infcust:craft max set value -15
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 20
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-prot"
data modify storage infcust:craft min set value -4
data modify storage infcust:craft max set value -2
data modify storage infcust:craft operation set value "add"
data modify storage infcust:craft absmin set value 4
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-speed"
data modify storage infcust:craft min set value 40
data modify storage infcust:craft max set value 80
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 40
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-jump"
data modify storage infcust:craft min set value 40
data modify storage infcust:craft max set value 80
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 40
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-falldist"
data modify storage infcust:craft min set value 20
data modify storage infcust:craft max set value 50
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 20
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-featherfalling"
data modify storage infcust:craft min set value 3
data modify storage infcust:craft max set value 5
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 3
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id


data modify storage infcust:craft stat set value "inf-atkspd"
data modify storage infcust:craft min set value 5
data modify storage infcust:craft max set value 12
data modify storage infcust:craft operation set value "remove"
data modify storage infcust:craft absmin set value 5
function infcust:craft/ingredients/macro with storage infcust:craft
scoreboard players operation #rollvalue inf-id += #amount inf-id



scoreboard players set #divide inf-id 10
scoreboard players operation #rollvalue inf-id /= #divide inf-id

scoreboard players add #temp inf-cost 15

scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_gold_ingredients
function infcust:craft/armor/helmet_ingredients

execute if items entity @s container.0 azure_bluet run function infcust:craft/ingredients/azure_bluet

scoreboard players operation #goldrv inf-id = #rollvalue inf-id
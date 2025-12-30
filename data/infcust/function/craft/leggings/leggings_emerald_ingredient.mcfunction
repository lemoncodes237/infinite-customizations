scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_emerald_ingredients

execute if items entity @s container.0 string run function infcust:craft/ingredients/string

scoreboard players operation #emeraldrv inf-id = #rollvalue inf-id
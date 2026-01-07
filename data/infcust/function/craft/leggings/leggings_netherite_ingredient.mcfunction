scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_netherite_ingredients
function infcust:craft/armor/leggings_ingredients

execute if items entity @s container.0 azalea run function infcust:craft/ingredients/azalea

scoreboard players operation #netheriterv inf-id = #rollvalue inf-id
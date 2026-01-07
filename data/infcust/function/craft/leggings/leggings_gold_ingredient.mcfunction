scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_gold_ingredients
function infcust:craft/armor/leggings_ingredients

execute if items entity @s container.0 azalea run function infcust:craft/ingredients/azalea
execute if items entity @s container.0 acacia_sapling run function infcust:craft/ingredients/acacia_sapling

scoreboard players operation #goldrv inf-id = #rollvalue inf-id
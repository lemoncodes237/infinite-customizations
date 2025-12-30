scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_diamond_ingredients
function infcust:craft/armor/boots_ingredients

execute if items entity @s container.0 ink_sac run function infcust:craft/ingredients/ink_sac
execute if items entity @s container.0 pufferfish run function infcust:craft/ingredients/pufferfish

scoreboard players operation #diamondrv inf-id = #rollvalue inf-id
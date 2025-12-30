scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_diamond_ingredients

execute if items entity @s container.0 brick run function infcust:craft/ingredients/brick
execute if items entity @s container.0 clay_ball run function infcust:craft/ingredients/clay_ball

scoreboard players operation #diamondrv inf-id = #rollvalue inf-id
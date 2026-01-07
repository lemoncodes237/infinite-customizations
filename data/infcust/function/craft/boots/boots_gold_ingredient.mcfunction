scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_gold_ingredients
function infcust:craft/armor/boots_ingredients

execute if items entity @s container.0 fire_coral run function infcust:craft/ingredients/fire_coral
execute if items entity @s container.0 lilac run function infcust:craft/ingredients/lilac

scoreboard players operation #goldrv inf-id = #rollvalue inf-id
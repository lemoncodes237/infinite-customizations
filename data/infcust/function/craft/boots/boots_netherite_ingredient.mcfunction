scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_netherite_ingredients
function infcust:craft/armor/boots_ingredients

execute if items entity @s container.0 fire_coral run function infcust:craft/ingredients/fire_coral
execute if items entity @s container.0 breeze_rod run function infcust:craft/ingredients/breeze_rod
execute if items entity @s container.0 dragon_head run function infcust:craft/ingredients/dragon_head


scoreboard players operation #netheriterv inf-id = #rollvalue inf-id
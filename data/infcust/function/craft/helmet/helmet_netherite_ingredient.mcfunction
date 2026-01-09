scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_netherite_ingredients
function infcust:craft/armor/helmet_ingredients

execute if items entity @s container.0 nether_brick run function infcust:craft/ingredients/nether_brick
execute if items entity @s container.0 azure_bluet run function infcust:craft/ingredients/azure_bluet
execute if items entity @s container.0 skeleton_skull run function infcust:craft/ingredients/skeleton_skull
execute if items entity @s container.0 nether_star run function infcust:craft/ingredients/nether_star
execute if items entity @s container.0 piglin_head run function infcust:craft/ingredients/piglin_head

scoreboard players operation #netheriterv inf-id = #rollvalue inf-id
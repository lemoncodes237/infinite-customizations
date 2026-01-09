scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_netherite_ingredients
function infcust:craft/armor/leggings_ingredients

execute if items entity @s container.0 azalea run function infcust:craft/ingredients/azalea
execute if items entity @s container.0 totem_of_undying run function infcust:craft/ingredients/totem_of_undying
execute if items entity @s container.0 popped_chorus_fruit run function infcust:craft/ingredients/popped_chorus_fruit

scoreboard players operation #netheriterv inf-id = #rollvalue inf-id
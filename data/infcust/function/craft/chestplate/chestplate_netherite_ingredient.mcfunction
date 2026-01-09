scoreboard players add #temp inf-ingredients 1

function infcust:craft/armor/armor_ingredients
function infcust:craft/armor/armor_netherite_ingredients
function infcust:craft/armor/chestplate_ingredients

execute if items entity @s container.0 quartz run function infcust:craft/ingredients/quartz
execute if items entity @s container.0 cobweb run function infcust:craft/ingredients/cobweb
execute if items entity @s container.0 shulker_shell run function infcust:craft/ingredients/shulker_shell
execute if items entity @s container.0 glowstone_dust run function infcust:craft/ingredients/glowstone_dust
execute if items entity @s container.0 chorus_flower run function infcust:craft/ingredients/chorus_flower

scoreboard players operation #netheriterv inf-id = #rollvalue inf-id
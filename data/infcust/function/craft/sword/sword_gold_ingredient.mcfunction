scoreboard players add #temp inf-ingredients 1

function infcust:craft/sword/sword_ingredient

execute if items entity @s container.0 fire_charge run function infcust:craft/ingredients/fire_charge
execute if items entity @s container.0 crimson_fungus run function infcust:craft/ingredients/crimson_fungus
execute if items entity @s container.0 blaze_rod run function infcust:craft/ingredients/blaze_rod
execute if items entity @s container.0 dragon_breath run function infcust:craft/ingredients/dragon_breath
execute if items entity @s container.0 ender_pearl run function infcust:craft/ingredients/ender_pearl
execute if items entity @s container.0 open_eyeblossom run function infcust:craft/ingredients/open_eyeblossom
execute if items entity @s container.0 dried_ghast run function infcust:craft/ingredients/dried_ghast
execute if items entity @s container.0 wither_rose run function infcust:craft/ingredients/wither_rose

scoreboard players operation #goldrv inf-id = #rollvalue inf-id
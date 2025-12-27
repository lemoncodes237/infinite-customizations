# Can't enchant or customize it anymore!
data modify entity @s Item.components."minecraft:custom_data".inf_customized set value 1
data modify entity @s Item.components."minecraft:enchantments"."infcust:unenchantable" set value 1
data modify entity @s Item.components."minecraft:repair_cost" set value 10000

data modify storage infcust:attributes operation set value "add_value"

execute unless score #temp inf-hp matches 0 run data modify storage infcust:attributes type set value "max_health"
execute unless score #temp inf-hp matches 0 store result storage infcust:attributes amount int 1 run scoreboard players get #temp inf-hp
execute unless score #temp inf-hp matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-armor matches 0 run data modify storage infcust:attributes type set value "armor"
execute unless score #temp inf-armor matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-armor
execute unless score #temp inf-armor matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-toughness matches 0 run data modify storage infcust:attributes type set value "armor_toughness"
execute unless score #temp inf-toughness matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-toughness
execute unless score #temp inf-toughness matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-kbres matches 0 run data modify storage infcust:attributes type set value "knockback_resistance"
execute unless score #temp inf-kbres matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-kbres
execute unless score #temp inf-kbres matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-atk matches 0 run data modify storage infcust:attributes type set value "attack_damage"
execute unless score #temp inf-atk matches 0 store result storage infcust:attributes amount int 0.1 run scoreboard players get #temp inf-atk
execute unless score #temp inf-atk matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

execute unless score #temp inf-atkspd matches 0 run data modify storage infcust:attributes type set value "attack_speed"
execute unless score #temp inf-atkspd matches 0 store result storage infcust:attributes amount double 0.1 run scoreboard players get #temp inf-atkspd
execute unless score #temp inf-atkspd matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes

# Percentage based

data modify storage infcust:attributes operation set value "add_multiplied_base"

execute unless score #temp inf-speed matches 0 run data modify storage infcust:attributes type set value "movement_speed"
execute unless score #temp inf-speed matches 0 store result storage infcust:attributes amount double 0.01 run scoreboard players get #temp inf-speed
execute unless score #temp inf-speed matches 0 run function infcust:craft/attribute_macro with storage infcust:attributes
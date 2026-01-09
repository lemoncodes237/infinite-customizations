execute store result score #timeofday inf-time run time query daytime
execute if score #timeofday inf-time matches 1000..13000 run return run execute unless predicate infcust:is_hungered run effect give @s hunger 5 0 true
effect give @s resistance 1 0 true
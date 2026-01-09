execute store result score #timeofday inf-time run time query daytime
execute if score #timeofday inf-time matches 1000..13000 run return run effect give @s strength 1 0 true
effect give @s weakness 1 0 true
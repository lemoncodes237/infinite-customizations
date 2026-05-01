scoreboard players set @s inf-broken-stone 0
scoreboard players set @s inf-broken-deepslate 0

execute store result score #inf-rotation inf-id run data get entity @s Rotation[0]

# East
execute if score #inf-rotation inf-id matches 45..135 
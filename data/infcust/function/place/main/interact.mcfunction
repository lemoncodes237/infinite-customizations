execute as @a[tag=inf_player_temp,distance=..15] unless items entity @s weapon.mainhand #infcust:customizables run return 0

tag @s add inf_taken

execute if items entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand #head_armor run tag @s add inf_helmet
execute if items entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand #chest_armor run tag @s add inf_chestplate
execute if items entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand #leg_armor run tag @s add inf_leggings
execute if items entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand #foot_armor run tag @s add inf_boots
execute if items entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand #swords run tag @s add inf_sword
execute if items entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand #pickaxes run tag @s add inf_pickaxe

summon item ~ ~1.1 ~ {Tags:["inf_ingredient"],NoGravity:1b,PickupDelay:32767,Item:{id:"grass_block",count:1},Age:-32768}
execute positioned ~ ~1.1 ~ run data modify entity @e[type=item,distance=..0,limit=1,tag=inf_ingredient] Item set from entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] SelectedItem
execute positioned ~ ~1.1 ~ run data modify entity @e[type=item,distance=..0,limit=1,tag=inf_ingredient] Item.count set value 1

playsound block.enchantment_table.use master @a ~ ~ ~

item modify entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand infcust:take_one
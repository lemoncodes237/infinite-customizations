execute as @a[tag=inf_player_temp,distance=..15] unless items entity @s weapon.mainhand #infcust:boots_diamond run return 0

tag @s add inf_taken

summon item ~ ~0.2 ~ {Tags:["inf_ingredient"],NoGravity:1b,PickupDelay:32767,Item:{id:"grass_block",count:1},Age:-32768}
execute positioned ~ ~0.2 ~ run data modify entity @e[type=item,distance=..0,limit=1,tag=inf_ingredient] Item set from entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] SelectedItem
execute positioned ~ ~0.2 ~ run data modify entity @e[type=item,distance=..0,limit=1,tag=inf_ingredient] Item.count set value 1

playsound entity.item_frame.add_item master @a ~ ~ ~

item modify entity @a[tag=inf_player_temp,distance=..15,limit=1,sort=nearest] weapon.mainhand infcust:take_one
# AS AT POSITION of custom item frame
setblock ~ ~ ~ minecraft:redstone_block replace
playsound minecraft:block.stone.place block @a[distance=0..5] ~ ~ ~ 1 0.75 1
execute positioned ^ ^ ^0.5 align xyz run summon armor_stand ~ ~ ~ {Fire:90000000,Small:1b,Marker:1b,Invisible:1b,Tags:["lezah.regenerator"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:7500001}}]}
kill @s
advancement revoke @s only lezah:onlyrecipes/warriors_chestplate
recipe take @s lezah:warriors_chestplate

execute store result score @s lezah.Craft run clear @s command_block

execute if score @s lezah.Craft matches 1.. run summon item ~ ~ ~ {Tags:["tagtemporal"],Item:{id:"iron_chestplate",Count:1b,tag:{warrior:1,display:{Name:'[{"translate":"item.lezah.warriors_chestplate","italic":false}]'}}}}

execute if score @s lezah.Craft matches 1.. store result entity @e[type=item,distance=..1,tag=tagtemporal,limit=1] Item.Count byte 1 run scoreboard players get @s lezah.Craft

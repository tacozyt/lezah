execute at @e[distance=0.1..15] run summon lightning_bolt ~ ~ ~
execute if entity @e[distance=0.1..15] run clear @s carrot_on_a_stick{ID:9} 1
execute if entity @e[distance=0.1..15] run playsound entity.item.break master @a[distance=..7] ~ ~ ~
execute unless entity @e[distance=0.1..15] run title @s actionbar {"translate":"text.lezah.thunder_rod_radius","color":"red"}
execute if entity @e[distance=0.1..15] run title @s actionbar {"translate":"text.lezah.thunder_rod_boom","color":"green"}
scoreboard players reset @s lezah.thunderRod
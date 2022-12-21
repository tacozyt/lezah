tellraw @a [{"text": "[LezaH Datapack] ","color": "green"},{"text": "Recargando...","color": "yellow"}]

##TRIGGERS##
function #lezah:add_triggers
function #lezah:enable_triggers

##FUNCIONES##
function lezah:loading/api/load
function lezah:config

##SCOREBOARDS##
scoreboard objectives add crafteos dummy
scoreboard objectives add vida health
scoreboard objectives add TEST dummy
scoreboard objectives add raidsVencidas custom:raid_win
scoreboard objectives add maderaTalada broken:oak_log
scoreboard objectives add lezah.Data dummy

##FIRST RUN Y ACTUALIZAR DATAPACK##
execute unless score #FirstRun lezah.Data matches 1 run function lezah:loading/firstrun
execute unless score #Version lezah.Data matches 7 run function lezah:loading/update

##TERMINAR##
tellraw @a [{"text": "[LezaH Datapack] ","color": "green"},{"text": "Recarga completa ","color": "yellow"}]
execute if score #DisableDatapackLink settings matches -1 run tellraw @a {"text": "[PÁGINA DEL DATAPACK]","color": "gold","clickEvent": {"action":"open_url","value":"https://tacozyt.github.io/lezah"}}
#tellraw @a "Ending context 5"

execute if score $get_skin suso.str matches 0 run function suso.str:internal/decode/interpret
execute if score $get_skin suso.str matches 0 run data modify storage suso.str:io out.skin set from storage suso.str:internal interpreted
execute unless score $get_model suso.str matches 0 unless score $get_cape suso.str matches 0 run function suso.str:internal/end

execute if score $offset suso.str matches 3 run data modify storage suso.str:internal result append value "I"
execute if score $offset suso.str matches 3 run scoreboard players add $offset suso.str 1
scoreboard players set $context suso.str 6

#data modify block ~ ~ ~ UpdateLastExecution set value 1b
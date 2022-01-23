#tellraw @a "Ending context 7"

execute if data storage suso.str:internal {last_char:"K"} run function suso.str:internal/context/end/7/no_cape
execute if data storage suso.str:internal {last_char:"s"} run function suso.str:internal/context/end/7/s_lower
execute if data storage suso.str:internal {last_char:"C"} run function suso.str:internal/context/end/7/no_cape
execute if data storage suso.str:internal {last_char:"L"} run function suso.str:internal/context/end/7/l
execute if data storage suso.str:internal {last_char:"Q"} run function suso.str:internal/context/end/7/no_cape
execute if data storage suso.str:internal {last_char:"S"} run function suso.str:internal/context/end/7/s_upper
scoreboard players set $context suso.str 8

#data modify block ~ ~ ~ UpdateLastExecution set value 1b

#KCQ: no cape, sLS: cape
#tellraw @a "Ending context 6"

execute unless score $get_cape suso.str matches 0 run function suso.str:internal/end

execute if data storage suso.str:internal {last_char:"g"} run function suso.str:internal/context/end/6/g
execute if data storage suso.str:internal {last_char:"i"} run function suso.str:internal/context/end/6/i
execute if data storage suso.str:internal {last_char:"K"} run function suso.str:internal/context/end/6/k
execute if data storage suso.str:internal {last_char:"s"} run function suso.str:internal/context/end/6/s
execute if data storage suso.str:internal {last_char:"C"} run function suso.str:internal/context/end/6/c
execute if data storage suso.str:internal {last_char:"L"} run function suso.str:internal/context/end/6/l
scoreboard players set $context suso.str 7

#data modify block ~ ~ ~ UpdateLastExecution set value 1b

#gKC: fat, isL: slim
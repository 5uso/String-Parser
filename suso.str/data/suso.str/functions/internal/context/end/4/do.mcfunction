#tellraw @a "Ending context 4"

execute unless score $get_skin suso.str matches 0 unless score $get_model suso.str matches 0 unless score $get_cape suso.str matches 0 run function suso.str:internal/end

#tellraw @a {"nbt": "last_char","storage": "suso.str:internal"}
execute if data storage suso.str:internal {last_char:"c"} run function suso.str:internal/context/end/4/c
execute if data storage suso.str:internal {last_char:"d"} run function suso.str:internal/context/end/4/d
execute if data storage suso.str:internal {last_char:"N"} run function suso.str:internal/context/end/4/n
execute if data storage suso.str:internal {last_char:"R"} run function suso.str:internal/context/end/4/r
execute if data storage suso.str:internal {last_char:"z"} run function suso.str:internal/context/end/4/z
execute if data storage suso.str:internal {last_char:"0"} run function suso.str:internal/context/end/4/0
scoreboard players set $context suso.str 5
#data modify block ~ ~ ~ UpdateLastExecution set value 1b
execute if score $offset suso.str matches 2 if data storage suso.str:internal {last_char:"I"} run function suso.str:internal/context/end/8
execute if data storage suso.str:internal {last_char:"C"} run function suso.str:internal/context/end/8
execute if data storage suso.str:internal {last_char:"S"} run function suso.str:internal/context/end/8
execute if score $offset suso.str matches 3 if data storage suso.str:internal {last_char:"y"} run function suso.str:internal/context/end/8

execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} run function suso.str:internal/context/check/8_aux
execute if score $offset suso.str matches 3 if data storage suso.str:internal {last_char:"i"} run function suso.str:internal/context/end/8

data modify storage suso.str:internal prev_char set from storage suso.str:internal last_char
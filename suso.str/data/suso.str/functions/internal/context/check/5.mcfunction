execute if score $offset suso.str matches 2 if data storage suso.str:internal {last_char:"I"} run function suso.str:internal/context/end/5
execute if data storage suso.str:internal {last_char:"C"} run function suso.str:internal/context/end/5
execute if data storage suso.str:internal {last_char:"S"} run function suso.str:internal/context/end/5
execute if score $offset suso.str matches 3 if data storage suso.str:internal {last_char:"y"} run function suso.str:internal/context/end/5

execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} run function suso.str:internal/context/check/5_aux
execute if score $offset suso.str matches 3 if data storage suso.str:internal {last_char:"i"} run function suso.str:internal/context/end/5

data modify storage suso.str:internal prev_char set from storage suso.str:internal last_char
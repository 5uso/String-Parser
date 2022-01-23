execute if score $offset suso.str matches 2 if data storage suso.str:internal {last_char:"I"} run function suso.str:internal/context/end/2
execute if data storage suso.str:internal {last_char:"C"} run function suso.str:internal/context/end/2
execute if data storage suso.str:internal {last_char:"S"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 3 if data storage suso.str:internal {last_char:"y"} run function suso.str:internal/context/end/2

execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"A"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"E"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"I"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"M"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"Q"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"U"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"Y"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"c"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"g"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"k"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"o"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"s"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"w"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"0"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"4"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 1 if data storage suso.str:internal {last_char:"i"} if data storage suso.str:internal {prev_char:"8"} run function suso.str:internal/context/end/2
execute if score $offset suso.str matches 3 if data storage suso.str:internal {last_char:"i"} run function suso.str:internal/context/end/2

data modify storage suso.str:internal prev_char set from storage suso.str:internal last_char
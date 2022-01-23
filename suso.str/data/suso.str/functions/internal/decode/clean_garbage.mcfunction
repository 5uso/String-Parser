scoreboard players remove $ctx_offset suso.str 1
data remove storage suso.str:internal bits[0]

execute if score $ctx_offset suso.str matches 1.. run function suso.str:internal/decode/clean_garbage
data remove storage suso.str:internal interpreted

execute unless score $context suso.str matches 1 unless score $context suso.str matches 3 run scoreboard players remove $ctx_offset suso.str 2
scoreboard players operation $ctx_offset suso.str %= #4 suso.str
scoreboard players operation $ctx_offset suso.str *= #2 suso.str
execute if score $ctx_offset suso.str matches 1.. run function suso.str:internal/decode/clean_garbage

#tellraw @a {"nbt": "bits", "storage": "suso.str:internal", "interpret": false}

function suso.str:internal/decode/tree/do

data remove storage suso.str:internal bits
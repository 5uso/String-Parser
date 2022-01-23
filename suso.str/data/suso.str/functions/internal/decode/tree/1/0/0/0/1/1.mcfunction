execute store result score $bit suso.str run data get storage suso.str:internal bits[0]
data remove storage suso.str:internal bits[0]
execute if score $bit suso.str matches 0 run function suso.str:internal/decode/tree/1/0/0/0/1/1/0
execute if score $bit suso.str matches 1 run function suso.str:internal/decode/tree/1/0/0/0/1/1/1
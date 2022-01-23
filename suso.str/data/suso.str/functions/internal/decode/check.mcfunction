execute if score $context suso.str matches 1 if score $get_time suso.str matches 0 run function suso.str:internal/decode/char_to_bits
execute if score $context suso.str matches 2 if score $get_id suso.str matches 0 run function suso.str:internal/decode/char_to_bits
execute if score $context suso.str matches 3 if score $get_name suso.str matches 0 run function suso.str:internal/decode/char_to_bits
execute if score $context suso.str matches 5 if score $get_skin suso.str matches 0 run function suso.str:internal/decode/char_to_bits
execute if score $context suso.str matches 8 if score $get_cape suso.str matches 0 run function suso.str:internal/decode/char_to_bits
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "C"
data modify storage suso.str:internal result append value "A"
data modify storage suso.str:internal result append value "g"
data modify storage suso.str:internal result append value "I"
data modify storage suso.str:internal result append value "H"
data modify storage suso.str:internal result append value "0"

scoreboard players set $offset suso.str 0
execute if score $get_model suso.str matches 0 run data modify storage suso.str:io out.model set value 0b
#s:, K:\n
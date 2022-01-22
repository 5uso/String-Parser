execute store result score $prep_chars suso.str if data storage suso.str:internal prep[]
data modify block ~1 ~1 ~ Text4 set value '{"nbt":"prep[]","storage":"suso.str:internal","separator":""}'
data modify storage suso.str:internal prep set from block ~1 ~1 ~ Text4
# Red Wool
execute if score throwableWool tbcStats matches 1 run replaceitem entity @s hotbar.0 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 2 run replaceitem entity @s hotbar.1 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 3 run replaceitem entity @s hotbar.2 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 4 run replaceitem entity @s hotbar.3 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 5 run replaceitem entity @s hotbar.4 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 6 run replaceitem entity @s hotbar.5 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 7 run replaceitem entity @s hotbar.6 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 8 run replaceitem entity @s hotbar.7 red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 9 run replaceitem entity @s hotbar.8 red_wool{display:{Name:"\"\""}}
# Orange Wool
execute if score throwableSlot tbcStats matches 3 if score throwableWool tbcStats matches 1 run replaceitem entity @s hotbar.0 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..4 if score throwableWool tbcStats matches 2 run replaceitem entity @s hotbar.1 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..5 if score throwableWool tbcStats matches 3 run replaceitem entity @s hotbar.2 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..6 if score throwableWool tbcStats matches 4 run replaceitem entity @s hotbar.3 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..7 if score throwableWool tbcStats matches 5 run replaceitem entity @s hotbar.4 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 4..7 if score throwableWool tbcStats matches 6 run replaceitem entity @s hotbar.5 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 5..7 if score throwableWool tbcStats matches 7 run replaceitem entity @s hotbar.6 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 6..7 if score throwableWool tbcStats matches 8 run replaceitem entity @s hotbar.7 orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 7 if score throwableWool tbcStats matches 9 run replaceitem entity @s hotbar.8 orange_wool{display:{Name:"\"\""}}
# Green Wool
execute if score throwableSlot tbcStats matches 3 if score throwableWool tbcStats matches 3 run replaceitem entity @s hotbar.2 lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 4 if score throwableWool tbcStats matches 4 run replaceitem entity @s hotbar.3 lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 5 if score throwableWool tbcStats matches 5 run replaceitem entity @s hotbar.4 lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 6 if score throwableWool tbcStats matches 6 run replaceitem entity @s hotbar.5 lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 7 if score throwableWool tbcStats matches 7 run replaceitem entity @s hotbar.6 lime_wool{display:{Name:"\"\""}}
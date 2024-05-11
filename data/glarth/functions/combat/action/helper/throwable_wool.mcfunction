# Red Wool
execute if score throwableWool tbcStats matches 1 run item replace entity @s hotbar.0 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 2 run item replace entity @s hotbar.1 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 3 run item replace entity @s hotbar.2 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 4 run item replace entity @s hotbar.3 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 5 run item replace entity @s hotbar.4 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 6 run item replace entity @s hotbar.5 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 7 run item replace entity @s hotbar.6 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 8 run item replace entity @s hotbar.7 with red_wool{display:{Name:"\"\""}}
execute if score throwableWool tbcStats matches 9 run item replace entity @s hotbar.8 with red_wool{display:{Name:"\"\""}}
# Orange Wool
execute if score throwableSlot tbcStats matches 3 if score throwableWool tbcStats matches 1 run item replace entity @s hotbar.0 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..4 if score throwableWool tbcStats matches 2 run item replace entity @s hotbar.1 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..5 if score throwableWool tbcStats matches 3 run item replace entity @s hotbar.2 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..6 if score throwableWool tbcStats matches 4 run item replace entity @s hotbar.3 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 3..7 if score throwableWool tbcStats matches 5 run item replace entity @s hotbar.4 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 4..7 if score throwableWool tbcStats matches 6 run item replace entity @s hotbar.5 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 5..7 if score throwableWool tbcStats matches 7 run item replace entity @s hotbar.6 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 6..7 if score throwableWool tbcStats matches 8 run item replace entity @s hotbar.7 with orange_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 7 if score throwableWool tbcStats matches 9 run item replace entity @s hotbar.8 with orange_wool{display:{Name:"\"\""}}
# Green Wool
execute if score throwableSlot tbcStats matches 3 if score throwableWool tbcStats matches 3 run item replace entity @s hotbar.2 with lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 4 if score throwableWool tbcStats matches 4 run item replace entity @s hotbar.3 with lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 5 if score throwableWool tbcStats matches 5 run item replace entity @s hotbar.4 with lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 6 if score throwableWool tbcStats matches 6 run item replace entity @s hotbar.5 with lime_wool{display:{Name:"\"\""}}
execute if score throwableSlot tbcStats matches 7 if score throwableWool tbcStats matches 7 run item replace entity @s hotbar.6 with lime_wool{display:{Name:"\"\""}}
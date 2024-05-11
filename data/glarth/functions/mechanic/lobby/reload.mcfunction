# Combat
clone 164 24 -95 164 24 -95 164 24 -95 replace force
clone 162 24 -95 162 24 -95 162 24 -95 replace force
clone 161 24 -95 161 24 -95 161 24 -95 replace force

# Graphics
clone 160 24 -100 160 24 -100 160 24 -100 replace force
clone 160 24 -102 160 24 -102 160 24 -102 replace force

# Hexapawn
clone 165 24 -101 165 24 -101 165 24 -101 replace force

# Spectator
clone 168 25 -107 168 25 -107 168 25 -107 replace force

# Music
clone 175 24 -110 175 24 -110 175 24 -110 replace force
clone 175 24 -107 175 24 -107 175 24 -107 replace force
clone 177 25 -110 177 25 -110 177 25 -110 replace force
clone 173 25 -110 173 25 -110 173 25 -110 replace force

# Boss
clone 173 25 -114 173 25 -114 173 25 -114 replace force
clone 175 24 -114 175 24 -114 175 24 -114 replace force
clone 177 25 -114 177 25 -114 177 25 -114 replace force

# Reload
clone 171 25 -112 171 25 -112 171 25 -112 replace force
clone 178 25 -112 178 25 -112 178 25 -112 replace force

# Cant Start
clone 192 23 -112 192 23 -112 192 23 -112 replace force

# Sound Test / Lang Info
clone 157 25 -112 157 25 -112 157 25 -112 replace force
clone 157 24 -112 157 24 -112 157 24 -112 replace force

# Credits
clone 168 25 -116 168 25 -116 168 25 -116 replace force

# New Credit Signs
clone 162 24 -110 162 24 -110 162 24 -110 replace force
clone 162 24 -112 162 24 -112 162 24 -112 replace force
clone 162 24 -114 162 24 -114 162 24 -114 replace force


# Reload
schedule clear glarth:mechanic/lobby/reload
schedule function glarth:mechanic/lobby/reload 200t



# Trapdoor
fill 179 32 -113 171 32 -113 minecraft:spruce_trapdoor[facing=south,half=top,open=false,powered=false,waterlogged=false]
fill 171 32 -111 179 32 -111 minecraft:spruce_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
# Calculate distance using item scale trick
# created by "Triton365" 
# on the Mincecraft Command Discord

# Input Keys: x,y,z
# Output Keys: NONE
# Example (on math storage):
# in:{x:1.0f,y:1.0f,z:1.0f}
# {out:1.732057f}

$data modify entity 0000000d-0109-0097-0116-000000000104 transformation set value [$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]

data modify storage distance:data out set from entity 0000000d-0109-0097-0116-000000000104 transformation.scale[0]

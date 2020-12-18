image_xscale += growspeed
image_yscale += growspeed
growspeed -= 0.005
rotspeed -= 0.05
if image_xscale <= 0
instance_destroy()
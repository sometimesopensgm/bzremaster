if instance_exists(Player) and docamera = true
{
	var _viewdist = 2;
	var _xoffset = UberCont.game_width/2
	var _yoffset = UberCont.game_height/2
	if instance_number(Player) = 1//singleplayer camera code
	{
		goalx = (Player.x/*+((mouse_x-Player.x)/2)/_viewdist*/)-_xoffset
		goaly = (Player.y/*+((mouse_y-Player.y)/2)/_viewdist*/)-_yoffset
	}

	/*if Player.wep_type[Player.wep] = 0 or Player.wep_type[Player.wep] = 2
	_viewdist = 8

	if Player.wep_type[Player.wep] = 3
	_viewdist = 3*/
	//screenshake
	if shake > 10
		shake *= 0.8
	if shake > 0
		shake -= 1
	else
		shake = 0
	
	jerkx = lerp(jerkx,goalx,0.5)-shake/2+irandom(shake)
	jerky = lerp(jerky,goaly,0.5)-shake/2+irandom(shake)
	
	camx = jerkx
	camy = jerky

	camera_set_view_pos(view_camera[0],camx,camy)
}


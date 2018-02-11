/// @desc
if (place_meeting(x,y+1,player2)){
	sprite_index = buttonDownSprite;
}
if (place_meeting(x,y+1,crate)){
	sprite_index = buttonDownSprite;		
}
if (place_meeting(x,y+1,player)){
	sprite_index = buttonDownSprite;		
}
else {
	sprite_index = buttonUpSprite;	
}
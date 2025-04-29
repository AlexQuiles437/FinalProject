/// @DnDAction : YoYo Games.Rooms.If_First_Room
/// @DnDVersion : 1
/// @DnDHash : 73B86DA6
if(room == room_first){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 36C71A96
	/// @DnDParent : 73B86DA6
	/// @DnDArgument : "spriteind" "Spr_Floor_1"
	/// @DnDSaveInfo : "spriteind" "Spr_Floor_1"
	sprite_index = Spr_Floor_1;
	image_index = 0;}

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 23CFF621
if(room == room_last){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1CCF465C
	/// @DnDParent : 23CFF621
	/// @DnDArgument : "spriteind" "Spr_Floor_3"
	/// @DnDSaveInfo : "spriteind" "Spr_Floor_3"
	sprite_index = Spr_Floor_3;
	image_index = 0;}
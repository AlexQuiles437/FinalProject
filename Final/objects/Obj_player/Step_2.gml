/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D5455F2
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 13FFD6F7
	/// @DnDParent : 5D5455F2
	/// @DnDArgument : "spriteind" "Spr_Bunny_Jump"
	/// @DnDSaveInfo : "spriteind" "Spr_Bunny_Jump"
	sprite_index = Spr_Bunny_Jump;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45B764D0
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 781DAB24
	/// @DnDParent : 45B764D0
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_Bunny_idle"
	/// @DnDSaveInfo : "spriteind" "Spr_Bunny_idle"
	sprite_index = Spr_Bunny_idle;
	image_index += 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 320CEE93
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "Obj_Floor_1"
/// @DnDSaveInfo : "object" "Obj_Floor_1"
var l320CEE93_0 = instance_place(x + 0, y + 2, [Obj_Floor_1]);if ((l320CEE93_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C7E9579
	/// @DnDParent : 320CEE93
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1CA7E67F
		/// @DnDParent : 1C7E9579
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_Bunny_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_Bunny_walk"
		sprite_index = Spr_Bunny_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 568C3587
		/// @DnDParent : 1C7E9579
		/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15D054AC
	/// @DnDParent : 320CEE93
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2E12F46E
		/// @DnDParent : 15D054AC
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_Bunny_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_Bunny_walk"
		sprite_index = Spr_Bunny_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 23169CFF
		/// @DnDParent : 15D054AC
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);image_yscale = image_yscale;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F50D2D8
	/// @DnDParent : 320CEE93
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 26CB19F5
		/// @DnDParent : 0F50D2D8
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_Bunny_idle"
		/// @DnDSaveInfo : "spriteind" "Spr_Bunny_idle"
		sprite_index = Spr_Bunny_idle;
		image_index += 0;}}
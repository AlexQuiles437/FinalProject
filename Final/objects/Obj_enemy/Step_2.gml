/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CF09E27
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 43749F84
	/// @DnDParent : 0CF09E27
	/// @DnDArgument : "spriteind" "spr_enemy_idle"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
	sprite_index = spr_enemy_idle;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C518C02
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 21A1771E
	/// @DnDParent : 1C518C02
	/// @DnDArgument : "spriteind" "spr_enemy_idle"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle"
	sprite_index = spr_enemy_idle;
	image_index = 0;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6AE1B801
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_Floor_1"
/// @DnDSaveInfo : "object" "Obj_Floor_1"
var l6AE1B801_0 = instance_place(x + 0, y + 2, [Obj_Floor_1]);if ((l6AE1B801_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0123CBCA
	/// @DnDParent : 6AE1B801
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0B8075F2
		/// @DnDParent : 0123CBCA
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
		sprite_index = Spr_enemy_walk;
		image_index += 0;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74BED674
	/// @DnDParent : 6AE1B801
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6C4D875F
		/// @DnDParent : 74BED674
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_enemy_walk"
		/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
		sprite_index = Spr_enemy_walk;
		image_index += 0;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A8004C5
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1110C7CE
	/// @DnDParent : 4A8004C5
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy_walk"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
	sprite_index = Spr_enemy_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 1A801CE7
	/// @DnDParent : 4A8004C5
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = abs(image_xscale);image_yscale = image_yscale;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EF5E995
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 132332A4
	/// @DnDParent : 0EF5E995
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Spr_enemy_walk"
	/// @DnDSaveInfo : "spriteind" "Spr_enemy_walk"
	sprite_index = Spr_enemy_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 61F27788
	/// @DnDParent : 0EF5E995
	/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1 * abs(image_xscale);image_yscale = image_yscale;}
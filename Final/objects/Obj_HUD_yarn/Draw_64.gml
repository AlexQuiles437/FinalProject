/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 303F3242
/// @DnDArgument : "obj" "Obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "Obj_player"
var l303F3242_0 = false;l303F3242_0 = instance_exists(Obj_player);if(!l303F3242_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3D111FC6
	/// @DnDParent : 303F3242
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 36266AA0
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2A70F47F
/// @DnDArgument : "font" "Font_curlzmt"
/// @DnDSaveInfo : "font" "Font_curlzmt"
draw_set_font(Font_curlzmt);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6437C460
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-19"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Yarn: ""
/// @DnDArgument : "var" "Obj_player.yarns"
draw_text(x + 30, y + -19, string("Yarn: ") + string(Obj_player.yarns));
/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7A650EFB
/// @DnDArgument : "obj" "Obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "Obj_player"
var l7A650EFB_0 = false;
l7A650EFB_0 = instance_exists(Obj_player);
if(!l7A650EFB_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 312F49D1
	/// @DnDParent : 7A650EFB
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 35CACBE4
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 31E53EAE
/// @DnDArgument : "font" "Font_curlzmt"
/// @DnDSaveInfo : "font" "Font_curlzmt"
draw_set_font(Font_curlzmt);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 789D7E75
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-19"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Crystals: ""
/// @DnDArgument : "var" "Obj_player.crystals"
draw_text(x + 30, y + -19, string("Crystals: ") + string(Obj_player.crystals));
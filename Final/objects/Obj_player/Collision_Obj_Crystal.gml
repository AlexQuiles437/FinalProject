/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3A915071
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 0A01A92E
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF32FF23"
effect_create_above(4, x + 16, y + 16, 0, $FF32FF23 & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F87F378
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "crystals"
crystals += 0;
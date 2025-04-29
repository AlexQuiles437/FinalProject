/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32332C07
/// @DnDArgument : "expr" "10 * 2"
/// @DnDArgument : "var" "walk_speed"
walk_speed = 10 * 2;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 19654B22
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 6417E52A
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FF00FF00"
effect_create_above(1, x + 16, y + 16, 0, $FF00FF00 & $ffffff);
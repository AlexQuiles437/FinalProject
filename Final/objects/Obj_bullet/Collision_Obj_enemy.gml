/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5DA4EF88
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 7BF4B1FB
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "2"
/// @DnDArgument : "color" "$FF00FF99"
effect_create_above(0, x + 16, y + 16, 2, $FF00FF99 & $ffffff);
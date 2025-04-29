/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 44DC5B8D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_Floor_1"
/// @DnDSaveInfo : "object" "Obj_Floor_1"
var l44DC5B8D_0 = instance_place(x + 0, y + 2, [Obj_Floor_1]);if ((l44DC5B8D_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0560F1C6
	/// @DnDParent : 44DC5B8D
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 35828967
	/// @DnDParent : 44DC5B8D
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Obj_Floor_1"
	/// @DnDSaveInfo : "object" "Obj_Floor_1"
	var l35828967_0 = instance_place(x + (25 * sign(move_x)), y + 0, [Obj_Floor_1]);if ((l35828967_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09ACC6DC
		/// @DnDParent : 35828967
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2EE9632F
	/// @DnDParent : 44DC5B8D
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "Obj_Floor_1"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "Obj_Floor_1"
	var l2EE9632F_0 = instance_place(x + (30 * sign(move_x)), y + 50, [Obj_Floor_1]);if (!(l2EE9632F_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 198B76FD
		/// @DnDParent : 2EE9632F
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DF9A2D1
		/// @DnDParent : 2EE9632F
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 38BC7D98
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 678B56E6
	/// @DnDParent : 38BC7D98
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C97DB05
		/// @DnDParent : 678B56E6
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2C962DFA
/// @DnDApplyTo : {Obj_player}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Obj_Floor_1"
/// @DnDSaveInfo : "object" "Obj_Floor_1"
move_and_collide(move_x, move_y, Obj_Floor_1,4,0,0,walk_speed,jump_speed);
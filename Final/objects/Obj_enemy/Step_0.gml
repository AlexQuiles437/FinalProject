/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 78D17737
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1086E8FE
/// @DnDInput : 2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "Obj_floor_1"
/// @DnDArgument : "object_1" "Obj_floor_2"
/// @DnDSaveInfo : "object" "Obj_floor_1"
/// @DnDSaveInfo : "object_1" "Obj_floor_2"
var l1086E8FE_0 = instance_place(x + 0, y + 2, [Obj_floor_1, Obj_floor_2]);if ((l1086E8FE_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21AF638A
	/// @DnDParent : 1086E8FE
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6C142575
	/// @DnDInput : 2
	/// @DnDParent : 1086E8FE
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" ""
	/// @DnDArgument : "object" "Obj_floor_1"
	/// @DnDArgument : "object_1" "Obj_floor_2"
	/// @DnDSaveInfo : "object" "Obj_floor_1"
	/// @DnDSaveInfo : "object_1" "Obj_floor_2"
	var l6C142575_0 = instance_place(x + (25 * sign(move_x)), y + 0, [Obj_floor_1, Obj_floor_2]);if ((l6C142575_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68D012E2
		/// @DnDParent : 6C142575
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1207601E
	/// @DnDInput : 2
	/// @DnDParent : 1086E8FE
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "target" ""
	/// @DnDArgument : "object" "Obj_floor_1"
	/// @DnDArgument : "object_1" "Obj_floor_2"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "Obj_floor_1"
	/// @DnDSaveInfo : "object_1" "Obj_floor_2"
	var l1207601E_0 = instance_place(x + (30 * sign(move_x)), y + 50, [Obj_floor_1, Obj_floor_2]);if (!(l1207601E_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 397E1620
		/// @DnDParent : 1207601E
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7462DD8D
		/// @DnDParent : 1207601E
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 148819DB
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 736313E3
	/// @DnDParent : 148819DB
	/// @DnDArgument : "var" "move_y "
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y  < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17BE7D3C
		/// @DnDParent : 736313E3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2B0D8B42
/// @DnDInput : 2
/// @DnDApplyTo : {Obj_player}
/// @DnDArgument : "object" "Obj_floor_1"
/// @DnDArgument : "object_1" "Obj_floor_2"
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "4"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDSaveInfo : "object" "Obj_floor_1"
/// @DnDSaveInfo : "object_1" "Obj_floor_2"
move_and_collide(move_x, move_y, Obj_floor_1, Obj_floor_2,4,0,0,walk_speed,jump_speed);
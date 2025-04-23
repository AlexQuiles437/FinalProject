/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6D1A503F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Obj_Floor"
/// @DnDSaveInfo : "object" "Obj_Floor"
var l6D1A503F_0 = instance_place(x + 0, y + 2, [Obj_Floor]);if ((l6D1A503F_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53D4E9F2
	/// @DnDParent : 6D1A503F
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 24ACEF41
	/// @DnDParent : 6D1A503F
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "Obj_Floor"
	/// @DnDSaveInfo : "object" "Obj_Floor"
	var l24ACEF41_0 = instance_place(x + (25 * sign(move_x)), y + 0, [Obj_Floor]);if ((l24ACEF41_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67AB67DF
		/// @DnDParent : 24ACEF41
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 52023729
	/// @DnDParent : 6D1A503F
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "Obj_Floor"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "Obj_Floor"
	var l52023729_0 = instance_place(x + (30 * sign(move_x)), y + 50, [Obj_Floor]);if (!(l52023729_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60EB3D11
		/// @DnDParent : 52023729
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EC67CD9
		/// @DnDParent : 52023729
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 385AB070
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7902CB60
	/// @DnDParent : 385AB070
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 589EB50C
		/// @DnDParent : 7902CB60
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2B6DBC83
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "Obj_Floor"
/// @DnDSaveInfo : "object" "Obj_Floor"
move_and_collide(move_x, move_y, Obj_Floor,4,0,0,walk_speed,jump_speed);
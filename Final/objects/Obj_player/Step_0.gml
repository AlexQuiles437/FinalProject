/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7CC72341
/// @DnDArgument : "expr" "keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2)"
/// @DnDArgument : "var" "controls_input_left"
controls_input_left = keyboard_check(vk_left)||gamepad_button_check(0,gp_padl)||(gamepad_axis_value(0,gp_axislh) < -0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3FCAABFD
/// @DnDArgument : "expr" "keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2)"
/// @DnDArgument : "var" "controls_input_right"
controls_input_right = keyboard_check(vk_right)||gamepad_button_check(0,gp_padr)||(gamepad_axis_value(0,gp_axislh) > 0.2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C65EBD5
/// @DnDArgument : "expr" "controls_input_right - controls_input_left"
/// @DnDArgument : "var" "move_x"
move_x = controls_input_right - controls_input_left;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 70B7D9DB
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 60849610
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 660B244C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" ""
/// @DnDArgument : "object" "Obj_floor_1"
/// @DnDSaveInfo : "object" "Obj_floor_1"
var l660B244C_0 = instance_place(x + 0, y + 2, [Obj_floor_1]);if ((l660B244C_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B178D37
	/// @DnDParent : 660B244C
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7796D9EF
	/// @DnDParent : 660B244C
	var l7796D9EF_0;l7796D9EF_0 = keyboard_check_pressed(vk_space);if (l7796D9EF_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B12E6E8
		/// @DnDParent : 7796D9EF
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 77863258
	/// @DnDParent : 660B244C
	/// @DnDArgument : "btn" "gp_face1"
	var l77863258_0 = 0;var l77863258_1 = gp_face1;if(gamepad_is_connected(l77863258_0) && gamepad_button_check_pressed(l77863258_0, l77863258_1)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58A3B584
		/// @DnDParent : 77863258
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 69E33132
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 273BDD27
	/// @DnDParent : 69E33132
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6966C900
		/// @DnDParent : 273BDD27
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 2E12935F
/// @DnDApplyTo : {Obj_player}
/// @DnDArgument : "object" "Obj_floor_1"
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "4"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDSaveInfo : "object" "Obj_floor_1"
move_and_collide(move_x, move_y, Obj_floor_1,4,0,0,walk_speed,jump_speed);
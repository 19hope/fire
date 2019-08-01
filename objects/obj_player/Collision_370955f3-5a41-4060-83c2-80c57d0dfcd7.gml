/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27BA2BC3
/// @DnDArgument : "var" "constructioned"
/// @DnDArgument : "value" "false"
if(constructioned == false)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7AE91C36
	/// @DnDParent : 27BA2BC3
	/// @DnDArgument : "objectid" "obj_tex"
	/// @DnDSaveInfo : "objectid" "f70d7cb4-4af5-477c-8bc4-05fcac3866ea"
	instance_create_layer(0, 0, "Instances", obj_tex);
}
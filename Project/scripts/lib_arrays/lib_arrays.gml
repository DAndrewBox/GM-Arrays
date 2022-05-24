/*
	Library:	GM-ARRAYS 
	Author:		D'Andrëw Box
	Revision:	2022/01/08
	Version:	1.0
*/

///	@function array_fill(array, value)
/// @param	{array}	array
/// @param	{any}	value
/// @desc	Fills an array with a value.
function array_fill(_array, _val) {
	for (var i = 0; i < array_length(_array); i++) {
		_array[@ i] = _val;
	}
}

///	@function array_clear(array)
/// @param	{array}	array
/// @desc	Clears an array filling with undefined values to clear memory.
function array_clear(_array) {
	array_delete(_array, 0, array_length(_array));
}

///	@function array_empty(array)
/// @param	{array}	array
/// @desc	Checks if an array is empty. Returns a boolean.
function array_empty(_array) {
	return (array_length(_array) == 0);
}

///	@function array_find_index(array, value)
/// @param	{array}	array
/// @param	{any}	value
/// @desc	Checks if a value is inside the array, and then returns its index, else, returns -1.
function array_find_index(_array, _val) {
	for (var i = 0; i < array_length(_array); i++) {
		if (_array[@ i] == _val) {
			return i;
		}
	}
	
	return -1;
}

///	@function array_to_ds_list(array)
/// @param	{array}	array
/// @desc	Returns the array as a ds list with all its values.
function array_to_ds_list(_array) {
	var _new_ds_list = ds_list_create();
	for (var i = 0; i < array_length(_array); i++) {
		_new_ds_list[| i] = _array[i];
	}
	
	return _new_ds_list;
}

///	@function ds_list_to_array(list)
/// @param	{ds_list}	list
/// @desc	Converts a ds list to an array with all its values and the returns it as array.
function ds_list_to_array(_list) {
	var _ds_list_size = ds_list_size(_list);
	var _new_array = array_create(_ds_list_size);
	
	for (var i = 0; i < _ds_list_size; i++) {
		_new_array[i] = _list[| i];
	}
	
	return _new_array;
}

///	@function array_to_struct(array)
/// @param	{array}	array
/// @desc	Returns the array as a struct with all its values inside numeric keys.
function array_to_struct(_array) {
	var _new_struct = {};
	for (var i = 0; i < array_length(_array); i++) {
		variable_struct_set(_new_struct, i, _array[i]);
	}
	
	return _new_struct;
}

///	@function array_write(array)
/// @param	{array}	array
/// @desc	Returns an string of the array.
function array_write(_array) {
	var _array_len = array_length(_array); 
	var _new_str = "[";
	
	for (var i = 0; i < _array_len; i++) {
		var _val_is_str = (is_string(_array[i]));
		_new_str += ( _val_is_str ? "\"" : "" ) +
					string(_array[i]) +
					( _val_is_str ? "\"" : "" ) +
					( i < _array_len - 1 ? "," : "" );
	}
	
	_new_str += "]";
	
	return _new_str;
}
![thumbnail](https://user-images.githubusercontent.com/51156767/170146814-d530b852-2685-430e-806f-aa05237b1775.png)

A set of functions as a library to import into your project that will help to use arrays at the level of ds_lists without having to use a ds_list, or even convert your arrays to ds_lists and structs.

Suggestions are open to any function that you think it needs.

The current list of functions are:
- `array_fill(array, value)`
  - Fills an array with a value.
- `array_clear(array)`
  - Clears an array to clear memory.
- `array_empty(array)`
  - Checks if an array is empty. Returns a boolean.
- `array_find_index(array, value)`
  - Checks if a value is inside the array, and then returns its index, else, returns -1.
- `array_to_ds_list(array)`
  - Returns the a ds list with all the array's values.
- `ds_list_to_array(ds_list)`
  - Converts a ds list to an array with all its values and the returns it as array.
- `array_to_struct(array)`
  - Returns the array as a struct with all its values inside numeric keys.
- `array_write(array)`
  - Returns the array as a string.

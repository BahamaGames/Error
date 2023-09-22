/*
by		: BAHAMAGAMES / rickky
GMail	: bahamagames@gmail.com 
Discord	: rickky#1696
GitHub	: https://github.com/BahamaGames
*/

/// @ignore
function bg_validate_options(____schema, ____object = {}, ____parameter_name = "", ____callback = function(k,v){self[$ k] = v;}) 
{
	if(typeof(____object) != "struct") throw new Error($"Expected '{____parameter_name}' to be a struct");
		
	var ___names		= struct_get_names(____schema);
	
	for(var i = array_length(___names) - 1; i >= 0; --i)
	{
		var ___key		= ___names[i];
		
		//temp fix for html injecting _Struct key into structs
		if(string_count("_struct_", ___key)) continue;
		
		var
		___value		= ____object[$ ___key],
		___validator	= ____schema[$ ___key];
		
		if(___value == undefined) ___value = ___validator.default_;
		
		if(!___validator.isValid(___value)) throw new TypeError(___validator.message);
		
		____callback(___key, ___value, ____object, ___validator);
	}
}
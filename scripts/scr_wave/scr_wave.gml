function scr_wave(arg_from, arg_to, arg_duration, arg_offset) {
	//Wave(from, to, duration, offset)

	// Returns a value that will wave back and forth between [from-to] over [duration] seconds
	// Examples
	//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
	//      x = Wave(-10,10,0.25,0)         -> move left and right quickly

	// Or here is a fun one! Make an object be all squishy!! ^u^
	//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
	//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)

	a4 = (arg_to - arg_from) * 0.5
	return arg_from + a4 + sin((((current_time * 0.001) + arg_duration * arg_offset) / arg_duration) * (pi*2)) * a4
}

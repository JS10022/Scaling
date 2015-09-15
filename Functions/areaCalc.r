function (sex, scale, subject) {
	# "areaCalc" 
	# Calculates the area of the polygon resulting from the overlap of a 
	# subject and a model's vowel quadrilaterals
	# 
	# James Schroeder, 3-Mar-2015 
	
	
	x <- seq(0, 3, length=500)
	y <- seq(0, 2, length=500)
	z <- expand.grid(x=x, y=y)			# A "list" of all x values at each y
	t <- constraints(sex, scale, subject, z$x, z$y)
	
	t <- which(t)	
	
	return(length(t))
}

function (data) {
	# "getSlope" 
	# Calculates the slope resulting from each segment of a polygon formed
	# by either a subject or model's vowel quadrilaterals
	# 
	# James Schroeder, 26-Feb-2015 (Updated)

	# The X & Y data
	x <- data[,2]
	y <- data[,1]
	
	# Creates empty vectors to hold the slope data
	m <- c(1:3)
	b <- c(1:3)
	
	# Generates the slope between the points
	m[1] <- (y[2] - y[3]) / (x[2] - x[3])
	b[1] <-  y[3] - m[1]  *  x[3]
		
	m[2] <- (y[2] - y[1]) / (x[2] - x[1])
	b[2] <-  y[1] - m[2]  *  x[1]
	
	m[3] <- (y[3] - y[1]) / (x[3] - x[1])
	b[3] <-  y[3] - m[3]  *  x[3]
	
	
	return(matrix(c(m,b), nrow=2, byrow=T))
}

function (x, y) {
	# "%==%" ("'%==%'")
	# Performs an elementwise "is equal" check on the vectors
	# given.
	# 
	# James Schroeder, 26-Feb-2015 (Updated)

	index = FALSE
	
	for(a in 1:length(x)) {
		for(b in 1:length(y)) {
			if(x[a] == y[b]) {
				index[a] <- TRUE
				break
			} else {
				index[a] <- FALSE
			}
		}
	}
	return(index)
}

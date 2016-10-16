#----------------
MOD <- function(x,y) {	x %% y }
#----------------
RANDOM <- function(x,y) { runif(1,x,y)}
#----------------
NORMAL <- function(x,y) { rnorm(1,x,y) }
#----------------
POISON <- function(x)  { rpois(1,x) }
#----------------
LOGNORMAL <- function(x,y) { rlnorm(1,x,y) }
#----------------
EXPRAND <- function (x) { rxep(1,x) }
#----------------
SINWAVE <- function(x,y) { x * sin(2 * pi * Time / y) }
#----------------
COSWAVE <- function(x,y) { x * cos(2 * pi * Time / y) }
#----------------
COUNTER <- function(x,y) {
	if (Time == time[1]) COUNTER_TEMP <<- x
	if (!exists('COUNTER_TEMP')) COUNTER_TEMP <<- x
	else COUNTER_TEMP <- COUNTER_TEMP  + 1
	if (COUNTER_TEMP == y) COUNTER_TEMP  <<- x
	return(COUNTER_TEMP)}
#--------
TREND <- function(x,y,z=0) {
	if (!exists('AVERAGE_INPUT')) AVERAGE_INPUT <<- z
	CHANGE_IN_AVERAGE <- (x - AVERAGE_INPUT) / y
	AVERAGE_INPUT <<- AVERAGE_INPUT + (DT * CHANGE_IN_AVERAGE)
	TREND_IN_INPUT <- (x - AVERAGE_INPUT) / (AVERAGE_INPUT * y)
	if (Time == time[length(time)]) rm(AVERAGE_INPUT,envir=environment(TREND))
	TREND_IN_INPUT}
#-----------------
DELAY <- function(x,y,z=NA) { x } # should be developed!

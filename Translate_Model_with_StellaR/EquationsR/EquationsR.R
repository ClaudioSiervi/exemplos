if (require(deSolve) == F) {install.packages('deSolve',repos='http://cran.r-project.org');if (require(deSolve) == F) print ('Error: deSolve package is not installed on your machine')}
model<-function(t,Y,parameters,...) { 

	Time <<- t
	Reservatorio <- Y['Reservatorio']

	Vazao__Afluente <- parameters['Vazao__Afluente']

	LN <- 
	Vazao_a_Jusante <- 10 * log10 ( Reservatorio ) ^ 2 
	Vazao_a_Montante <- Vazao__Afluente * t * log ( Reservatorio ) - Vazao_a_Jusante 


	 dReservatorio = Vazao_a_Montante  - Vazao_a_Jusante 
	 list(c(dReservatorio))
}
##############################################
##############################################

parms <- c(Vazao__Afluente = 100.0)
Y <- c(Reservatorio = 100)


source('EquationsR_functions.R')

DT <- 0.25
time <- seq(0,12,DT)
out <- ode(func=model,y=Y,times=time,parms=parms,method='rk4')
plot(out, col="blue",
          main="Reservatório",
          xlab="Meses", ylab="Volume (m³)", 
          xaxs="i",yaxs="i", xlim=c(0,12) )



# fonte
# http://stackoverflow.com/questions/21557634/using-a-time-series-of-parameters-to-solve-ode-in-r?rq=1


# # this is the derivative function dQ/dt = f(Q,p,e) where p and e are time series
# dqdt <- function(qsim, pcp, pet) {
#   dq <- (qsim ^ 2) * ((pcp - pet) / qsim) 
#   return(dq)
# }

# loops through and calculates the Q at each time step using the Euler method
# for (i in 1:(nrow(working) - 1)) {
#   
#   dq <- dqdt(working$qsim[i], pcp = working$p[i], pet = working$e[i])
#   
#   working$qsim[i + 1] <- working$qsim[i] + dq
# }




# Define uma estrutura contendo as datas
datetime = structure(
  c(1185915600, 1185919200, 1185922800, 1185926400, 1185930000, 1185933600, 1185937200, 1185940800, 1185944400, 1185948000, 1185951600), 
  class = c("POSIXct", "POSIXt"), tzone = "UTC")

# Define uma estrutura com 11 linhas(sem nome) e 4 colunas("datetime", "p", "e", "qsim")
# uma amostra com 4 variáveis e 11 observações
working <- structure(list(datetime, 
  p = c(0, 0, 0, 1.1, 0.5, 0.7, 0, 0, 1.3, 0, 0), 
  e = c(0.15, 0.14, 0.13, 0.21, 0.15, 0.1, 0.049, 0, 0, 0,0), 
  qsim = c(-1.44604436552566, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA)), 
  .Names = c("datetime", "p", "e", "qsim"), row.names = c(NA, 11L), 
  class = "data.frame")


library(deSolve) # carrega a biblioteca

# Retorna os estados do modelo representado por um sistema de um sistema diferenciais ordinárias
# que recebe as inputs e retorna uma lista de output

# t-> intervalo de integração
# y-> valores iniciais dos estoques (estado inicial do sistema)
# params -> variáveis auxiliares ou exógenas
gradfun <- function(t,y,parms) {
  
  # retorna uma lista com a posição dos elementos da lista (t) 
  #repetida dim(t) vezes
  
  # intervalo de integração
  intervalo_integracao <- pmax(1, ceiling(t)) 
  
  # cria uma nova lista com a repetição dos elementos de (p) e com a dimensão do intervalo de integração
  pcp <- working$p[intervalo_integracao] # retorna os elementos (p) repetidos dim(t) vezes
  
  # cria uma nova lista com a dimensão do intervalo de integração
  pet <- working$e[intervalo_integracao] # retorna os elementos (q) repetidos dim(t) vezes
  
  # equação diferfencial ordinária com valores iniciais variando com o tempo
  dqsim <- y^2*( (pcp-pet) /y)
  
  # lista com a EDO
  list(dqsim, NULL)
}



gradfun(0,working$qsim[1],1)   ## teste


dimensao_working = nrow(working)


time = seq(0, dimensao_working ,length=110) # passo
# seq(0, 11, 101)


ode1 <- ode(time, y=c(qsim=working$qsim[1]),func=gradfun, parms=NULL,method="rk4")


plot(ode1)

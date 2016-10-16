
options(echo=TRUE) # if you want see commands in output file
args <- commandArgs(trailingOnly = TRUE)

Caminho <- args[1]

require(xlsx)       

Tempo <- toString(format(Sys.time(), "%d-%m-%Y %H-%M"))
ArquivoSaida <- paste("Resultados",Tempo,".xlsx", sep=" ")
write.xlsx(Caminho  , file=ArquivoSaida, sheetName="Fluxo de Caixa")#,col.names=TRUE, row.names=TRUE, append=TRUE)
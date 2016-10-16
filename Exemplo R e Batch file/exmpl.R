options(echo=TRUE) # if you want see commands in output file
args <- commandArgs(trailingOnly = TRUE)
print(args)
# trailingOnly=TRUE means that only your arguments are returned, check:
# print(commandsArgs(trailingOnly=FALSE))

start_date <- as.Date(args[1])
name <- args[2]
n <- as.integer(args[3])
rm(args)

# Some computations:
x <- rnorm(n)
png(paste(name,".png",sep=""))
plot(start_date+(1L:n), x)
dev.off()

summary(x)


show(n)
print(n)
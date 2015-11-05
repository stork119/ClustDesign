#########################################
### Sesnsitivity Analysis Clustering  ###
#########################################

### Arguments :
# File directory
# Sensitivity Matrix File Directory
# Output Directories 
# zeta
# delta
# Parameters Names File Directory/Directories 
###

# Clear workspace
rm(list=ls()) 
# LIBRARIES
source("SACluster.R")

#### arguments####

delta            <- 0.95
zeta             <- 1
K                <- 10
rules.delta      <- TRUE

directory.models <- '../../Models/'

#### NFKB EXAMPLE ####
directory.folder <- paste(directory.models,
                          'NFkB/Output/2015-07-17/t-175-tdeg-0/',
                          sep = "")
directory.SM     <- paste(directory.folder, 'sense.csv', sep = "")
directory.FIM     <- paste(directory.folder, 'FIM.csv', sep = "")
directory.output <- paste(directory.folder,
                          "clustering/",
                          'delta/',
                          '/', 
                          sep = "")
directory.params <- paste(directory.models,
                          'NFkB/Input/parameters_names.csv',
                          sep = "")

#### JAKSTATGB EXAMPLE ####
directory.folder <- paste(directory.models,
                          'JAKSTATGB/',
                          sep = "")
directory.SM     <- paste(directory.folder,
                          'Output/Experiment_Jaccobo/sense.csv',
                          sep = "")
directory.FIM     <- paste(directory.folder,
                          'Output/Experiment_Jaccobo/FIM.csv',
                          sep = "")
directory.output <- paste(directory.folder,
                          'Output/Experiment_Jaccobo/',
                          "clustering/",
                          'delta/',
                          '/', 
                          sep = "")
directory.params <- paste(directory.folder,
                          'Input/parameters_names.csv',
                          sep = "")

#### MAIN CODE ####
dir.create(path = directory.output, recursive = TRUE)

SM <- as.matrix(read.csv(directory.SM, sep = "\t", header = FALSE))
params <- read.csv(directory.params, header = FALSE, sep = "\t") ## HORIZONTAL

if( ncol(SM) != nrow(params)){
  print("Error. Wrong number of parameters")
}

x <- SMC(FIM = x$FIM_all,
         labels = t(params),
         names = t(params),
         zeta = zeta,
         delta = delta)

# write.table(x = x$FIM_all, 
#           file= directory.FIM,
#             col.names = FALSE,
#           row.names = FALSE,
#           sep = "\t")

cluster <- clusterident.SMC(x)

directory.dendrogram <- paste(directory.output, "_dendrogram", ".pdf", sep = "")
pdf(directory.dendrogram, width = 12, height = 6)
plotDendogram.SMC(x,
                  cluster = cluster,
                  fig      = c(0,1,0,1),
                  new      = FALSE,
                  labels.args = list(cex = 0.5)
)
dev.off()

directory.fi <- paste(directory.output, "_fi", ".pdf", sep = "")
pdf(directory.fi, width = 6, height = 6)
p <- plotFI.SMC(x,
                cluster = cluster,
                fig      = c(0,1,0,1),
                new      = FALSE
)
dev.off()

directory.barplot <- paste(directory.output, "_barplot", ".pdf", sep = "")
pdf(directory.barplot, width = 12, height = 6)
barplot.SMC(x, cluster = cluster, fig = c(0,1,0,1))
dev.off()

directory.barplot <- paste(directory.output, "_barplot", ".pdf", sep = "")
pdf(directory.barplot, width = 12, height = 6)
barplot.SMC(x, cluster = cluster, fig = c(0,1,0,1))
dev.off()

directory.cov <- paste(directory.output, "_cov", ".pdf", sep = "")
pdf(directory.cov, width = 6, height = 6)
plotEV.Cov.SMC(x, cluster = cluster, fig = c(0,1,0,1))
dev.off()

directory.cor <- paste(directory.output, "_cor", ".pdf", sep = "")
pdf(directory.cor, width = 6, height = 6)
plotEV.Cor.SMC(x, cluster = cluster, fig = c(0,1,0,1))
dev.off()

directory.sa <- paste(directory.output, "_sa", ".csv", sep = "")
data.sa <- sa.SMC(x, cluster = cluster, header=FALSE)
write.csv(x = data.sa, file = directory.sa)

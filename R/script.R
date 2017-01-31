library(Rcpp)

#setwd("D:/KN/ClustSense/ClustDesign/R")


wd <- dirname(parent.frame(2)$ofile)
source(paste(wd,"/Identifiability/SACluster.R", sep = ""))
#rm(wd)

####TODO: Read from Makefile ####
# TODO compile static libraries
compileSourceCode <- function(
  source_cpp_filename,
  source_cpp_path = "../C++/ClustDesign/",
#  PKG_CXXFLAGS = "-I/usr/lib/R/include -I/usr/lib/R/site-library/Rcpp/include -I/usr/lib/R/site-library/RInside/include -ggdb -O2 -pipe -fdebug-prefix-map=/pub/devel/R/R-3.1.3-1.x86_64/build=/usr/src/debug/R-3.1.3-1 -fdebug-prefix-map=/pub/devel/R/R-3.1.3-1.x86_64/src/R-3.1.3=/usr/src/debug/R-3.1.3-1 -std=c++11 -I/cygdrive/d/KN/ClustSense/ClustDesign/C++/ClustDesign/",
# PKG_LIBS     = "-s  -L/cygdrive/d/KN/ClustSense/ClustDesign/C++/ClustDesign/ -lmetamodel -lidentifiability -L/cygdrive/d/KN/ClustSense/ClustDesign/C++/ClustDesign/models/GE/ -lmodel" 
  PKG_CXXFLAGS="-ID:/KN/ClustSense/ClustDesign/C++/ClustDesign/ -IC:/R/R-3.2.3/include -IC:/R/R-3.2.3/include/x64 -IC:/R/R-3.2.3/library/Rcpp/include -IC:/R/R-3.2.3/library/RInside/include -O2 -Wall -mtune=core2 -std=c++11",
  PKG_LIBS="-s  -LD:/KN/ClustSense/ClustDesign/C++/ClustDesign/ -lmetamodel -lidentifiability -LD:/KN/ClustSense/ClustDesign/C++/ClustDesign/models/GE/ -lmodel -pthread"

){

  #### copmpiling static libraries
  
Sys.setenv("PKG_CXXFLAGS" = PKG_CXXFLAGS)
Sys.setenv("PKG_LIBS" = PKG_LIBS)

sourceCpp(file = paste(source_cpp_path, source_cpp_filename, sep = ""))
}
#### ####

get_dir <- function(exp, 
		   dir.wd = getwd()){
  dir.output <- paste(dir.wd, "/../Output/", sep = "")
  dir.model  <- paste(dir.output, "GE/", sep = "")
  dir.model.exp  <- paste(dir.model, exp, "/", sep = "")
  dir.create(dir.model.exp, showWarnings = FALSE, recursive = TRUE) 
  return(dir.model.exp)
}


#### ####
identifiability <- function(exp,
                	    source_cpp_filename = "ClustDesignRcpp.cpp",
		            compile = TRUE,
			    p = c( 10, 20, 3, 0.6),
			    y = c(501, 1005),
			    dydt = c(0,0),
			    dt   = 0.1,
			    to   = 120,
			    from = 0,
			    by.num = 1000,
			    save_solutions = FALSE, 
			    labels = paste("p", 1:length(p), sep = ""),
                            names = labels,
			    zeta = 1,
			    delta = 0.95, 
			    time_interval = 500,
			    time_computation = 1000*60*5)
 {
  if(compile){
    compileSourceCode(source_cpp_filename = source_cpp_filename)
  }
    
  #create_dir
  dir.model.exp <- get_dir(exp = exp)
  dir.odesolve <- paste(dir.model.exp, "odesolve.csv", sep = "" )
  dir.sm <-  paste(dir.model.exp, "sm.csv", sep = "" )
  
 trange <- seq(from = from,
                to = to,
                by = (to-from)/by.num)
  l <- ClustDesignPthread(p = p,
                   y = y,
                   dydt = dydt,
                   dt = dt,
                   trange = trange,
                   dir_odesolve = dir.odesolve,
                   dir_sm = dir.sm,
		   save_solutions = save_solutions,
		   time_interval = time_interval,
		   time_computation = time_computation
	)
  if(l$success == 1){
    x <- SMC(
	S =  matrix(data = unlist(l$sm),
			 ncol = 4,
			 byrow=TRUE), 
	labels = labels,
	names = names,
	zeta = zeta,
	delta = delta,
	dir.output = dir.model.exp )
	
    cluster <- clusterident.SMC(x)
  
    if(save_solutions){
	directory.dendrogram <- paste(dir.model.exp, "dendrogram", ".pdf", sep = "")
	pdf(directory.dendrogram, width = 12, height = 6)
	plotDendogram.SMC(x,
                  cluster = cluster,
                  fig      = c(0,1,0,1),
                  new      = FALSE,
                  labels.args = list(cex = 0.5)
	)
	dev.off()
    }

    return(cluster)
  } else {
    return(-1)
  }
}



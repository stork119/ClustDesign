library(Rcpp)
####TODO: Read from Makefile ####
# TODO compile static libraries
compileSourceCode <- function(
  source_cpp_filename,
  source_cpp_path = "..\\C++\\ClustDesign\\",
#  PKG_CXXFLAGS = "-I\\usr\\lib\\R\\include -I\\usr\\lib\\R\\site-library\\Rcpp\\include -I\\usr\\lib\\R\\site-library\\RInside\\include -ggdb -O2 -pipe -fdebug-prefix-map=\\pub\\devel\\R\\R-3.1.3-1.x86_64\\build=\\usr\\src\\debug\\R-3.1.3-1 -fdebug-prefix-map=\\pub\\devel\\R\\R-3.1.3-1.x86_64\\src\\R-3.1.3=\\usr\\src\\debug\\R-3.1.3-1 -std=c++11 -I\\cygdrive\\d\\KN\\ClustSense\\ClustDesign\\C++\\ClustDesign\\",
#  PKG_LIBS     = "-s  -L\\cygdrive\\d\\KN\\ClustSense\\ClustDesign\\C++\\ClustDesign\\ -lmetamodel -lidentifiability -L\\cygdrive\\d\\KN\\ClustSense\\ClustDesign\\C++\\ClustDesign\\models\\GE\\ -lmodel"
 
  PKG_CXXFLAGS="-ID:\\KN\\ClustSense\\ClustDesign\\C++\\ClustDesign\\ -IC:\\R\\R-3.2.3\\include -IC:\\R\\R-3.2.3\\include\\x64 -IC:\\R\\R-3.2.3\\library\\Rcpp\\include -IC:\\R\\R-3.2.3\\library\\RInside\\include -O2 -Wall -mtune=core2 -std=c++11",
  PKG_LIBS="-s  -LD:\\KN\\ClustSense\\ClustDesign\\C++\\ClustDesign\\ -lmetamodel -lidentifiability -LD:\\KN\\ClustSense\\ClustDesign\\C++\\ClustDesign\\models\\GE\\ -lmodel"

){

  #### copmpiling static libraries
  
Sys.setenv("PKG_CXXFLAGS" = PKG_CXXFLAGS)
Sys.setenv("PKG_LIBS" = PKG_LIBS)

sourceCpp(paste(source_cpp_path, source_cpp_filename, sep = ""))
}
#### ####


run <- function(exp,
                source_cpp_filename = "ClustDesignRcpp.cpp",
                compile = TRUE){
  if(compile){
    compileSourceCode(source_cpp_filename = source_cpp_filename)
  }
    
  #create_dir
  dir.output <- paste(getwd(), "\\..\\Output\\", sep = "")
  dir.model  <- paste(dir.output, "GE\\", sep = "")
  dir.model.exp  <- paste(dir.model, exp, "\\", sep = "")
  dir.create(dir.model.exp, showWarnings = TRUE, recursive = TRUE)
  
  dir.odesolve <- paste(dir.model.exp, "odesolve.csv", sep = "" )
  dir.sm <-  paste(dir.model.exp, "sm.csv", sep = "" )
  
  p    <- c( 10, 20, 3, 0.6)
  y    <- c(501, 1005)
  dydt <- c(0,0)
  dt   <- 0.1
  to   <- 12
  from <- 0
  by.num <- 1000
  trange <- seq(from = from,
                to = to,
                by = (to-from)\\by.num)
  l <- ClustDesign(
     p = p,
                    y = y,
                    dydt = dydt,
                    dt = dt,
                    trange = trange,
                   dir_odesolve = dir.odesolve,
                   dir_sm = dir.sm)
  l.m <- matrix(data = unlist(l), ncol = 4, byrow=TRUE)
  
  return(l.m)
}
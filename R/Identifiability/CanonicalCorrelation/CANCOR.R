#### CANCOR #### 

source(paste(wd,"/CanonicalCorrelation/CANCORSM.R", sep = ""))
source(paste(wd,"/CanonicalCorrelation/CANCORFIM.R", sep = ""))


CANCOR <- function(type = NULL,
                   cancor                  = NULL,
                   get_information_cancor  = NULL,
                   get_correlations_cancor = NULL){
  # Description :
  # 
  # Parameters  :
  #
  
  ### MAIN CODE
  
  val <- list(type                    = type,
              cancor                  = cancor,
              get_information_cancor  = get_information_cancor,
              get_correlations_cancor = get_correlations_cancor)
  class(val) <- "CANCOR"
  val
}
print.CANCOR <- function(x,...){
  cat("CANCOR :")
  print(x$type)
}

info.CANCOR <- function(x,...){
  cat("CANCOR :")
  print(x$type)
}


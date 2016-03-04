R_HOME=$(shell R RHOME )
## You may have to set this to one of the two values below to enforce a  particular
## architecture in case the autodetection in the next line does not work correctly
##R_ARCH :=		--arch $(shell echo 'cat(.Platform$$r_arch)' | R --vanilla --slave)
##R_ARCH=--arch i386
##R_ARCH=--arch x64
##R_ARCH=--arch x86_64


## You may need to set R_LIBS_USER if Rcpp or RInside are installed where R does not see them by default
## include headers and libraries for R
RCPPFLAGS=$(shell $(R_HOME)/bin/R $(R_ARCH) CMD config --cppflags)
RLDFLAGS=$(shell $(R_HOME)/bin/R $(R_ARCH) CMD config --ldflags)
RBLAS=$(shell $(R_HOME)/bin/R $(R_ARCH) CMD config BLAS_LIBS)
RLAPACK=$(shell $(R_HOME)/bin/R $(R_ARCH) CMD config LAPACK_LIBS)


## include headers and libraries for Rcpp interface classes
RCPPINCL= 		$(shell echo 'Rcpp:::CxxFlags()' | $(R_HOME)/bin/R --vanilla --slave)
RCPPLIBS= 		$(shell echo 'Rcpp:::LdFlags()'  | $(R_HOME)/bin/R --vanilla --slave)


## include headers and libraries for RInside embedding classes
RINSIDEINCL := 		$(shell echo 'RInside:::CxxFlags()' | $(R_HOME)/bin/R --vanilla --slave)
RINSIDELIBS := 		$(shell echo 'RInside:::LdFlags()'  | $(R_HOME)/bin/R --vanilla --slave)


## R

##RINCL -L$(R_HOME)/bin -lR

## BOOST
BOOSTLIBS=	-lboost_filesystem -lboost_system

## compiler etc settings used in default make rules
CXX := 			$(shell $(R_HOME)/bin/R CMD config CXX)
CPPFLAGS := 		-Wall $(shell $(R_HOME)/bin/R CMD config CPPFLAGS)
CXXFLAGS := 		$(RCPPFLAGS) $(RCPPINCL) $(RINSIDEINCL) $(shell $(R_HOME)/bin/R CMD config CXXFLAGS) -std=c++11
LDFLAGS	= 		-s
LDLIBS := 		$(RLDFLAGS) $(RBLAS) $(RLAPACK) $(RINSIDELIBS) $(RCPPLIBS) $(BOOSTLIBS)
CC := 			$(shell $(R_HOME)/bin/R CMD config CXX)

SRCS=ClustDesign.cpp  metamodel.cpp models/GE/model.cpp identifiability.cpp 
OBJS=$(subst .cpp,.o, $(SRCS))



all: ClustDesign

ClustDesign: $(OBJS)
	$(CXX) $(LDFLAGS) -o ClustDesign $(OBJS)  $(LDLIBS)

##ClustDesign.o: odeint.h ClustDesign.cpp
##	$(CXX) $(CXXFLAGS)   -c ClustDesign.cpp

ClustDesign.o:  ClustDesign.cpp odeint.h models.h identifiability.h models/GE/model.h
	$(CXX) $(CXXFLAGS)   -c ClustDesign.cpp

Identifiability.o: identifiability.h identifiability.cpp odeint.h models.h metamodel.h
	$(CXX) $(CXXFLAGS)   -c identifiability.cpp

metamodel.o: metamodel.h metamodel.cpp odeint.h
	$(CXX) $(CXXFLAGS)   -c metamodel.cpp

models/GE/model.o: models/GE/model.h models/GE/model.cpp odeint.h metamodel.h
	$(CXX) $(CXXFLAGS)   -o models/GE/model.o -c models/GE/model.cpp 


clean:
	rm $(OBJS) *.exe

print-%:
	@echo '$*=$($*)'



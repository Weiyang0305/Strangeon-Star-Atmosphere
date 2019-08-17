HD_COMPONENT_NAME	= Xspec

HD_COMPONENT_VERS	= 

#library definition

HD_LIBRARY_ROOT		= mbrems

HD_LIB_STYLE		= shared

#source code

HD_LIBRARY_SRC_f	= mbrems.f


HD_LIBRARY_SRC_f90	= 


HD_LIBRARY_SRC_f03	= 

HD_LIBRARY_SRC_c	= 

HD_LIBRARY_SRC_C	= 

HD_LIBRARY_SRC_cxx	= lpack_mbrems.cxx \
			  mbremsFunctionMap.cxx

HD_LIBRARY_SRC_cpp	= 

HD_LIBRARY_SRC_cc	= 


HD_INSTALL_LIBRARIES	= ${HD_LIBRARY_ROOT}

XS_SOURCE_FLAGS		= -I${HD_SRC}/src \
			  -I${HD_SRC}/src/main \
			  -I${HD_SRC}/src/include \
			  -I${HD_SRC}/src/XSFit \
			  -I${HD_SRC}/src/XSFit/FitMethod \
			  -I${HD_SRC}/src/XSFunctions \
			  -I${HD_SRC}/src/xslib\
			  -I${HD_SRC}/src/XSModel \
			  -I${HD_SRC}/src/XSModel/Model \
			  -I${HD_SRC}/src/XSPlot \
			  -I${HD_SRC}/src/XSUser \
			  -I${HD_SRC}/src/XSUtil

HD_CXXFLAGS		= ${HD_STD_CXXFLAGS} ${XS_SOURCE_FLAGS} \
			  -I${HEADAS}/include -DINITPACKAGE

HD_CFLAGS		= ${HD_STD_CFLAGS} ${XS_SOURCE_FLAGS} \
			  -I${HEADAS}/include -DINITPACKAGE

HD_FFLAGS		= ${HD_STD_FFLAGS} ${XS_SOURCE_FLAGS} \
			  -I${HEADAS}/include -DINITPACKAGE

#lib file name
PACKAGE		= lib${HD_LIBRARY_ROOT}${SHLIB_SUFFIX}

HD_CLEAN		= lpack_${HD_LIBRARY_ROOT}.cxx \
			  ${HD_LIBRARY_ROOT}FunctionMap.cxx \
			  ${HD_LIBRARY_ROOT}FunctionMap.h \
			  ${PACKAGE} Makefile pkgIndex.tcl *.bck

HD_ADD_SHLIB_LIBS	= yes

HD_SHLIB_LIBS           = ${HD_LFLAGS} -l${CCFITS} -l${CFITSIO} -lXS \
                          -lXSUtil -lXSFunctions -lXSModel -l${TCL} \
                          ${HD_STD_LIBS} ${SYSLIBS} ${F77LIBS4C} \

include ${HD_STD_MAKEFILE}


###############################################################################
# Copyright (c) 2017, Lawrence Livermore National Security, LLC.
#
# Produced at the Lawrence Livermore National Laboratory
#
# LLNL-CODE-725085
#
# All rights reserved.
#
# This file is part of BLT.
#
# For additional details, please also read BLT/LICENSE.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the disclaimer below.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the disclaimer (as noted below) in the
#   documentation and/or other materials provided with the distribution.
#
# * Neither the name of the LLNS/LLNL nor the names of its contributors may
#   be used to endorse or promote products derived from this software without
#   specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL LAWRENCE LIVERMORE NATIONAL SECURITY,
# LLC, THE U.S. DEPARTMENT OF ENERGY OR CONTRIBUTORS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
# IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
###############################################################################

################################
# Build Targets
################################
option(ENABLE_DOCS       "Enables documentation" ON)
option(ENABLE_EXAMPLES   "Enables examples" ON)
option(ENABLE_TESTS      "Enables tests" ON)
option(ENABLE_BENCHMARKS "Enables benchmarks" OFF)
option(ENABLE_COVERAGE   "Enables code coverage support" OFF)


################################
# Build Options
################################
option(ENABLE_COPY_HEADERS "Copy headers to build directory" OFF)
option(ENABLE_FORTRAN      "Enables Fortran compiler support" OFF)
option(ENABLE_SHARED_LIBS  "Enables shared libraries." OFF)

option(ENABLE_MPI          "Enables MPI support" OFF)
option(ENABLE_OPENMP       "Enables OpenMP compiler support" OFF)
option(ENABLE_CUDA         "Enable CUDA support" OFF)


################################
# Compiler Options
################################
option(ENABLE_ALL_WARNINGS       "Enables all compiler warnings on all build targets" ON)
option(ENABLE_WARNINGS_AS_ERRORS "Enables treating compiler warnings as errors on all build targets" OFF)

set(BLT_CXX_STD "c++11" CACHE STRING "Version of C++ standard")
set_property(CACHE BLT_CXX_STD PROPERTY STRINGS c++98 c++11 c++14)

if( NOT ( ( BLT_CXX_STD STREQUAL "c++98" ) 
       OR ( BLT_CXX_STD STREQUAL "c++11" ) 
       OR ( BLT_CXX_STD STREQUAL "c++14" ) ) )
    message(FATAL_ERROR "${BLT_CXX_STD} is an invalid entry for BLT_CXX_STD.
Valid Options are ( c++98, c++11, c++14 )")
endif()

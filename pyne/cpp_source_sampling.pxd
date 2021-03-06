################################################
#                 WARNING!                     #
# This file has been auto-generated by xdress. #
# Do not modify!!!                             #
#                                              #
#                                              #
#                    Come on, guys. I mean it! #
################################################


from libcpp cimport bool as cpp_bool
from libcpp.string cimport string as std_string
from libcpp.vector cimport vector as cpp_vector

cdef extern from "source_sampling.h" namespace "pyne":

    cdef cppclass AliasTable:
        # constructors
        AliasTable() except +
        AliasTable(cpp_vector[double]) except +

        # attributes
        cpp_vector[int] alias
        int n
        cpp_vector[double] prob

        # methods
        int sample_pdf() except +
        int sample_pdf(double) except +
        int sample_pdf(double, double) except +
        pass



cdef extern from "source_sampling.h" namespace "pyne":

    cdef cppclass Sampler:
        # constructors
        Sampler() except +
        Sampler(std_string) except +
        Sampler(std_string, std_string) except +
        Sampler(std_string, std_string, cpp_vector[double]) except +
        Sampler(std_string, std_string, cpp_vector[double], std_string) except +
        Sampler(std_string, std_string, cpp_vector[double], cpp_bool) except +

        # attributes


        # methods
        cpp_vector[double] particle_birth() except +
        cpp_vector[double] particle_birth(cpp_vector[double]) except +
        pass




{'cpppxd_footer': '', 'pyx_header': '', 'pxd_header': '', 'pxd_footer': '', 'cpppxd_header': '', 'pyx_footer': ''}
################################################
#                 WARNING!                     #
# This file has been auto-generated by xdress. #
# Do not modify!!!                             #
#                                              #
#                                              #
#                    Come on, guys. I mean it! #
################################################
"""
"""
cimport cpp_source_sampling
cimport dtypes
cimport numpy as np
from libcpp cimport bool as cpp_bool
from libcpp.string cimport string as std_string
from libcpp.vector cimport vector as cpp_vector

import numpy as np

np.import_array()

def particle_birth(rands):
    """particle_birth(rands)
     This function was overloaded in the C-based source. To overcome
    this we ill put the relevant docstring for each version below. Each
    version will begin with a line of # characters.
    
    """
    cdef cpp_vector[double] rands_proxy
    cdef int irands
    cdef int rands_size
    cdef double * rands_data
    cdef cpp_vector[double] rtnval
    
    cdef np.npy_intp rtnval_proxy_shape[1]
    # rands is a ('vector', 'float64', 0)
    rands_size = len(rands)
    if isinstance(rands, np.ndarray) and (<np.ndarray> rands).descr.type_num == np.NPY_FLOAT64:
        rands_data = <double *> np.PyArray_DATA(<np.ndarray> rands)
        rands_proxy = cpp_vector[double](<size_t> rands_size)
        for irands in range(rands_size):
            rands_proxy[irands] = rands_data[irands]
    else:
        rands_proxy = cpp_vector[double](<size_t> rands_size)
        for irands in range(rands_size):
            rands_proxy[irands] = <double> rands[irands]
    rtnval = cpp_source_sampling.particle_birth(rands_proxy)
    rtnval_proxy_shape[0] = <np.npy_intp> rtnval.size()
    rtnval_proxy = np.PyArray_SimpleNewFromData(1, rtnval_proxy_shape, np.NPY_FLOAT64, &rtnval[0])
    rtnval_proxy = np.PyArray_Copy(rtnval_proxy)
    return rtnval_proxy



def sampling_setup(file_name, src_tag_name, e_bounds_file_name, analog):
    """sampling_setup(file_name, src_tag_name, e_bounds_file_name, analog)
     This function was overloaded in the C-based source. To overcome
    this we ill put the relevant docstring for each version below. Each
    version will begin with a line of # characters.
    
    """
    cdef char * file_name_proxy
    cdef char * src_tag_name_proxy
    cdef char * e_bounds_file_name_proxy
    file_name_bytes = file_name.encode()
    src_tag_name_bytes = src_tag_name.encode()
    e_bounds_file_name_bytes = e_bounds_file_name.encode()
    cpp_source_sampling.sampling_setup(std_string(<char *> file_name_bytes), std_string(<char *> src_tag_name_bytes), std_string(<char *> e_bounds_file_name_bytes), <bint> analog)






{'cpppxd_footer': '', 'pyx_header': '', 'pxd_header': '', 'pxd_footer': '', 'cpppxd_header': '', 'pyx_footer': ''}

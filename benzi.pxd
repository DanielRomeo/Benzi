cdef run(text)

cdef class Error:
	cdef public str error_name 
	cdef public str details
	cpdef public as_string(self)

# cdef class IllegalCharError(Error)

cdef class Lexer(object):
	cdef public str text
	cdef public int pos
	cdef public str current_char
	cpdef advance(self)
	cdef make_tokens(self)
	cpdef make_number(self)
	
cdef class Token:
	cdef str thetype 
	# cdef str value
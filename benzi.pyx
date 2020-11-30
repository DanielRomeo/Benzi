########################
# TOKENS CLASS
########################

# token type TT
cdef str TT_INT = 'INT'
cdef str TT_FLOAT = 'FLOAT'
cdef str TT_PLUS = 'PLUS'
cdef str TT_MINUS = 'MINUS'
cdef str TT_MUL = 'MUL'
cdef str TT_DIV = 'DIV'
cdef str TT_LPAREN = 'INT'
cdef str TT_RPAREN = 'RPAREN'


cdef class Token:
	cdef str thetype 
	cdef str value
	def __init__(self, str type_, str value):
		self.thetype = type_
		self.value = value

	def __repr__(self):
		if self.value: return f'{self.type}:{self.thetype}'
		return f'{self.thetype}'


########################
# LEXER CLASS
########################

cdef class Lexer(object):
	"""docstring for Lexer"""

	#declarations
	cdef str text
	cdef int pos
	cdef char current_char 
	

	#constructor
	def __init__(self, text):
		self.text = text
		self.pos = -1
		self.current_char = '\0'
		self.advance()
		
	#move_along function
	def advance(self):
		self.pos += 1
		self.current_char = self.text[self.pos] if self.pos < len(self.text) else '\0'

	#token_determiner
	def make_tokens(self):
		tokens = []


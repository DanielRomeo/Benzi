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

class Lexer(object):
	"""docstring for Lexer"""

	#declarations
	cdef str text
	cdef int pos
	cdef char current_char 
	cdef tokens = str[]

	#constructor
	def __init__(self, text):
		self.text = text
		self.pos = -1
		self.current_char = None
		self.advance()
		
	#move_along function
	def advance(self):
		self.pos += 1
		self.current_char = self.text[pos] if self.pos < len(self.text) else None

	#token_determiner
	def make_tokens(self):
		tokens = []


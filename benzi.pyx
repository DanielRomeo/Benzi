########################
# CONSTANTS
########################
DIGITS = '0123456789'

########################
# ERRORS
########################

cdef class Error:
	def __init__(self, str error_name, str details):
		self.error_name = error_name
		self.details = details

	cpdef as_string(self):
		result = f'{self.error_name}:{self.details}'
		return result

cdef class IllegalCharError(Error):
	def __init__(self, details):
		super().__init__('Illegal Charector', details)	


########################
# TOKENS
########################
cdef str TT_INT = 'INT'
cdef str TT_FLOAT = 'FLOAT'
cdef str TT_PLUS = 'PLUS'
cdef str TT_MINUS = 'MINUS'
cdef str TT_MUL = 'MUL'
cdef str TT_DIV = 'DIV'
cdef str TT_LPAREN = 'INT'
cdef str TT_RPAREN = 'RPAREN'



cdef class Token:
	def __init__(self, str type_,value):
		self.thetype = type_
		self.value = value

	def __repr__(self):
		if self.value: return f'{self.thetype}:{self.value}'
		return f'{self.thetype}'


########################
# LEXER CLASS
########################

cdef class Lexer(object):
	"""docstring for Lexer"""
	#declare
	 
	
	def __init__(self, text):
		self.text = text
		self.pos = -1
		self.current_char = '\0'
		self.advance()
		
	#move_along function
	cpdef advance(self):
		self.pos += 1
		self.current_char = self.text[self.pos] if self.pos < len(self.text) else '\0'

	#token_determiner
	cdef make_tokens(self):
		tokens = []

		while self.current_char != '\0':
			if self.current_char in ' \t':
				self.advance()
			elif self.current_char in DIGITS: # if its a number
				tokens.appenf(self.make_number())
			elif self.current_char == '+':
				tokens.append(Token(TT_PLUS))
				self.advance()
			elif self.current_char == '-':
				tokens.append(Token(TT_MINUS))
				self.advance()
			elif self.current_char == '*':
				tokens.append(Token(TT_MUL))
				self.advance()
			elif self.current_char == '/':
				tokens.append(Token(TT_DIV))
				self.advance()
			elif self.current_char == '(':
				tokens.append(Token(TT_LPAREN))
				self.advance()				
			elif self.current_char == ')':
				tokens.append(Token(TT_RPAREN))
				self.advance()
			else:
				#return an error
				char = self.current_char
				self.advance()
				return [], IllegalCharError("'" + char + "'")
		return tokens, None

	cpdef make_number(self):
		"""determine whether a number is an integer or flloat"""
		cdef str num_str
		cdef int dot_count =0
		num_str = ''

		while self.current_char != '\0' and self.current_char in DIGITS + '.':
			if self.current_char == '.':
				if dot_count == 1: break
				dot_count += 1
				num_str += '.'
			else:
				num_str += self.current_char
			self.advance()

		if dot_count == 0:
			return Token(TT_INT, int(num_str))
		else:
			return Token(TT_FLOAT, float(num_str))


########################
# RUN function
########################
cdef run(text):
	lexer = Lexer(text)
	tokens, error = lexer.make_tokens()

	return tokens, error
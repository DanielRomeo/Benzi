cimport benzi

while True:
	text = input("benzi -> ")
	result, error = benzi.run(text)

	if error: 
		print(error.as_string())
	else: 
		print(result)
# All of the letters, inside a hash


# Function for all of the letters, as an array
	def letter(alphabet)
	letters = ("a".."z").to_a
	letters_shifted = ("f".."z").to_a
	letters_right_end = ("a".."e").to_a
	letters_shifted + letters_right_end

	end


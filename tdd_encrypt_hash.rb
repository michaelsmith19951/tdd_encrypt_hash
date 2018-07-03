# Function for all of the letters, as an array
	def encrypt(alphabet)
	letters = ("a".."z").to_a
	letters_shifted = ("f".."z").to_a
	letters_right_end = ("a".."e").to_a
	moved = letters_shifted + letters_right_end
	return moved
	end

# Function that decodes the message
	def decode(moved)
		if moved[21] != nil
			moved.drop[21]
		end
	original_left = ["a".."e"]
	original = original_left + moved
	original
	end






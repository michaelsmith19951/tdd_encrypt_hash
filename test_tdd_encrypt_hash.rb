# Use the Ruby gem 
require "minitest/autorun"

# Use the file that will be tested
require_relative "tdd_encrypt_hash.rb"

# Test the test_tdd_bash.rb for passes and failures
class TestTddEncryptHash < Minitest::Test

# Functions for each test
	def test_if_array_is_class
		assert_equal(Array, encrypt({}).class)
	end


	def test_if_letter_position_is_correct
		letters = [*"a".."z"]
		assert_equal(letters[1], "b")
	end

	def test_if_new_position_zero_equals_f
		letters_shifted = [*"f".."z"]
		assert_equal(letters_shifted[0], "f")
	end

	def test_if_new_letters_are_right_end
		letters_right_end = [*"a".."e"]
		assert_equal(letters_right_end[0], "a")
	end

	def test_positions_moved_variables
		letters_shifted = [*"f".."z"]
		letters_right_end = [*"a".."e"]
		moved = letters_shifted + letters_right_end
		assert_equal(moved[2], "h")
	end

	# def test_position_21_after_drop
	# 	letters_shifted = [*"f".."z"]
	# 	letters_right_end = [*"a".."e"]
	# 	moved = letters_shifted + letters_right_end
	# 	assert_equal(decode(moved[21]), nil)
	# end

	# def test_position_20_after_drop
	# 	letters_shifted = [*"f".."z"]
	# 	letters_right_end = [*"a".."e"]
	# 	moved = letters_shifted + letters_right_end
	# 	assert_equal(moved[20], "z")
	# end

	def test_restored_alphabet
		moved = [*"f".."z"]
		original_left = [*"a".."e"]
		original = original_left + moved
		assert_equal(original[0], "a")
	end

	def test_need_returns_rj
		assert_equal("rj", encrypt("me"))
	end
end


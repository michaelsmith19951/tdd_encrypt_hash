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
end
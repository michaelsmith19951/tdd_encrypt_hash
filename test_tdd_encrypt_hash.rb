# Use the Ruby gem (library)
require "minitest/autorun"

# Use the file that will be tested
require_relative "tdd_encrypt_hash.rb"

# Test the test_tdd_bash.rb for passes and failures
class TestTddEncryptHash < Minitest::Test

# Functions for each test
	def test_if_array_is_class
		assert_equal(Array, letter({}).class)
	end


	def test_if_letter_position_is_correct
		letters = [*"a".."z"]
		assert_equal(letters[1], "g")
	end
end
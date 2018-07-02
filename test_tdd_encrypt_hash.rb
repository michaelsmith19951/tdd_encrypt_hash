# Use the Ruby gem (library)
require "minitest/autorun"

# Use the file that will be tested
require_relative "tdd_encrypt_hash.rb"

# Test the test_tdd_bash.rb for passes and failures
class TestTddEncryptHash < Minitest::Test

# Functions for each test
	def test_if_hash_is_class
		assert_equal(Hash, letter({}).class)
	end
end
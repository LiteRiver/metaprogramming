# frozen_string_literal: true

require 'test/unit'
require_relative './string_extension'

class StringExtensionTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end

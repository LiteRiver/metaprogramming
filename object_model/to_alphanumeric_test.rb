# frozen_string_literal: true

require 'test/unit'
require_relative './alphanumeric'

class ToAlphanumericTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
  end
end

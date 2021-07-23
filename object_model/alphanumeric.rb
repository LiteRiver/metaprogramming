# frozen_string_literal: true

def to_alphanumeric(str)
  str.gsub(/[^\w\s]/, '')
end

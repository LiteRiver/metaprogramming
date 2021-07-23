# frozen_string_literal: true

class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end

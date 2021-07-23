require 'money'

Money.rounding_mode = 'BigDecimal::ROUND_HALF_UP'
bargain_price = Money.from_amount(100, 'USD')
puts bargain_price.format

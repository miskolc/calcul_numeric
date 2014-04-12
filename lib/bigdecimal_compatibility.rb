require "bigdecimal"

module BigDecimalCompatible
  def to_bd
    BigDecimal.new(self.to_s)
  end
end  
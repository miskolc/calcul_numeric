class BigDecimal

  @precision = 100

  def humanize
    self.to_s "F"
  end
end
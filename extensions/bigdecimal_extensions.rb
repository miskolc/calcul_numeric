class BigDecimal

  @precision = 100

  def humanize
    self.truncate(6).to_s "F"
  end
end
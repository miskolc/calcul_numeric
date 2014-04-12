require 'bigdecimal'
require "bigdecimal/math"

include BigMath

module BigMath

  self.singleton_class.send(:alias_method,:original_log,:log)
  self.singleton_class.send(:alias_method,:original_exp,:exp)
  alias_method :original_cos, :cos
  alias_method :Original_PI, :PI

  def self.log x, prec=100
    self.original_log x,prec 
  end

  def self.exp x, prec=100
    self.original_exp x, prec 
  end
  
  def cos x, prec=100
    original_cos x,prec 
  end 

  def PI prec=100
    Original_PI prec
  end

end
require 'bigdecimal'
require "bigdecimal/math"

APP_PATH = File.dirname(__FILE__)
$:.unshift(File.join(APP_PATH, "lib"))

require "bigdecimal_compatibility"
require "bigmath_helpers"
require "test_helpers"

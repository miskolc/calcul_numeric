require 'bigdecimal'
require "bigdecimal/math"

APP_PATH = File.dirname(__FILE__)
$:.unshift(File.join(APP_PATH, "lib"))
$:.unshift(File.join(APP_PATH, "extensions"))

require "bigdecimal_compatibility"
require "bigmath_helpers"
require "test_helpers"

require "app_helpers"
require "bigdecimal_extensions"
require "native_extensions"
require 'active_support/all'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'zuck/koala/koala_methods'
require 'zuck/fb_object'
require 'zuck/helpers'
Dir[File.expand_path('../zuck/facebook/**/*.rb', __FILE__)].each do |f|
  require f
end

Koala.config.api_version = 'v3.3' if Koala.config.api_version.nil?
if Koala.config.api_version != 'v3.3'
  warn('!!! Zuck was written for Facebook API version v3.3 and may not work!')
  warn("    The current Koala.config.api_version='#{Koala.config.api_version}' does not match 'v3.3'!")
end

module Zuck
  extend KoalaMethods
end

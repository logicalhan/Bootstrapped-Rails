require "rails"
require "bootstrapped-rails/version"

module Bootstrapped
  module Rails
    require "bootstrapped-rails/ie_hex_str"
    if defined? Rails && Rails::VERSION::MAJOR == 3 && Rails::VERSION::MINOR >= 1
  		require "bootstrapped-rails/engine"
		end
  end
end

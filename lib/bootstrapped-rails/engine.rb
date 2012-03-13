require File.dirname(__FILE__) + '/breadcrumbs.rb'

module Bootstrapped
  module Rails
    class Engine < ::Rails::Engine

			initializer 'twitter-bootstrap-rails.setup_helpers' do |app|
				app.config.to_prepare do
					ActionController::Base.send(:include, BreadCrumbs)
				end
			end
    end
  end
end
# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrapped-rails/version"

Gem::Specification.new do |s|
  s.name        = "bootstrapped-rails"
  s.version     = Bootstrapped::Rails::VERSION
  s.authors     = ["Han"]
  s.email       = ["han@logicalprep.com"]
  s.homepage    = ""
  s.summary     = %q{ A mashed together version of bootstrap-sass and twitter-bootstrap-rails, with generators. Also now has breadcrumb support, and some bourbon like scss helpers. }
  s.description = %q{ This is a hacked-together version of the gem 'bootstrap-sass', with the generators from 'twitter-bootstrap-rails', has also replaced the Glyphicons icons with [Font Awesome](http://fortawesome.github.com/Font-Awesome/), since svg icons are resizable and colorable and such. There are also some custom scss helpers in a folder called 'custom_partials', which are just a byproduct of trying not to hate css. The nature of those scss helpers are very similar in look and feel to the bourbon gem by thoughtbot, which seems more complete than my own (to be honest) but when I had started accumulating helpers, I was not aware of the gem. Feel free to muck around with this as you please.  }

  s.rubyforge_project = "bootstrapped-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", "vendor"]

  s.add_dependency "sass", ">= 3.1.0"
  s.add_development_dependency "bundler", "~> 1.0.0"
  s.add_development_dependency "rails",   "~> 3.1"
end

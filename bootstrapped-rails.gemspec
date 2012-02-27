# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrapped-rails/version"

Gem::Specification.new do |s|
  s.name        = "bootstrapped-rails"
  s.version     = Bootstrapped::Rails::VERSION
  s.authors     = ["Han"]
  s.email       = ["hkfortytwo@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Personal fork of the gem bootstrap-rails}
  s.description = %q{see summary.}

  s.rubyforge_project = "bootstrapped-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib", 'vendor']

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

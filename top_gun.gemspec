# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "top_gun/version"

Gem::Specification.new do |s|
  s.name        = "top_gun"
  s.version     = TopGun::VERSION
  s.authors     = ["Dylan Egan"]
  s.email       = ["dylanegan@gmail.com"]
  s.homepage    = "https://github.com/dylanegan/top_gun"
  s.summary     = %q{Top Gun}
  s.description = %q{Danger Zone}

  s.rubyforge_project = "top_gun"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

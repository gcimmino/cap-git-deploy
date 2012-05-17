# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cap-git-deploy/version"

Gem::Specification.new do |s|
  s.name        = "cap-git-deploy"
  s.version     = Cap::Git::Deploy::VERSION
  s.authors     = ["Nicola Racco"]
  s.email       = ["nicola@mikamai.com"]
  s.homepage    = ""
  s.summary     = %q{Mikamai-style deploy strategy}
  s.description = %q{Mikamai-style deploy strategy}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  #
  s.add_runtime_dependency "capistrano"
  s.add_runtime_dependency "grit"
end
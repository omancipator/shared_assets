# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shared_assets/version'

Gem::Specification.new do |spec|
  spec.name          = "shared_assets"
  spec.version       = SharedAssets::VERSION
  spec.authors       = ["Flavia Goncalves"]
  spec.email         = ["fgoncalves@prosper.com"]
  spec.summary       = %q{Write a short summary. Required.}
  spec.description   = %q{Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  # spec.files: The files included in the gem. This clever use of git ls-files
  # ensures that any files tracked in the git repo will be included.
  spec.files = `git ls-files -z`.split("\x0") 
  # spec.test_files: Files that are used for testing the gem. This line
  # supports TestUnit, MiniTest, RSpec, and Cucumber
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  # spec.executables: Where any executable files included with the gem live.
  # These go in bin by convention.
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  # spec.require_paths: Directories within the gem that need to be loaded in order
  # to load the gem.
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 4.0"  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

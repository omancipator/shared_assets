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

  spec.files = Dir["{lib,vendor}/**/*"] #+ ["MIT-LICENSE", "README.md"]  
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", "~> 4.0"  
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

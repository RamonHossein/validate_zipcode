# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'validate_zipcode/version'

Gem::Specification.new do |spec|
  spec.name          = "validate_zipcode"
  spec.version       = ValidateZipcode::VERSION
  spec.authors       = ["RamonHossein"]
  spec.email         = ["hosseinramon@gmail.com"]

  spec.summary       = %q{ Zip code validation for Rails. }
  spec.description   = %q{ Adds validation methods considering different country zip code formats. }
  spec.homepage      = "https://github.com/RamonHossein/validate_zipcode."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'activemodel', "~> 3.2.0"
end

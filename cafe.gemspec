# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cafe/version'

Gem::Specification.new do |spec|
  spec.name          = "cafe"
  spec.version       = Cafe::VERSION
  spec.authors       = ["Faraaz Khan"]
  spec.email         = ["fkhan@rationalizeit.us"]

  spec.summary       = %q{WIP: simple gem to perform automated tests}
  spec.description   = %q{WIP: simple gem to perform web based automated tests}
  spec.homepage      = "http://rationalizeit.us"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

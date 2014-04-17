# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nurse/version'

Gem::Specification.new do |spec|
  spec.name          = "nurse"
  spec.version       = Nurse::VERSION
  spec.authors       = ["Daichi TOMA"]
  spec.email         = ["amothic@gmail.com"]
  spec.summary       = %q{catch the error}
  spec.description   = %q{catch the error for web app}
  spec.homepage      = "http://amothic.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

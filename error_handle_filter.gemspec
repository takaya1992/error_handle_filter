# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'error_handle_filter/version'

Gem::Specification.new do |spec|
  spec.name          = "error_handle_filter"
  spec.version       = ErrorHandleFilter::VERSION
  spec.authors       = ["takaya1992"]
  spec.email         = ["tky.c10ver@gmail.com"]
  spec.summary       = %q{my rack middleware gem}
  spec.description   = %q{mixi-inc/RubyTraining create gem}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

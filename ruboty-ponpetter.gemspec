# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/ponpetter/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-ponpetter"
  spec.version       = Ruboty::Ponpetter::VERSION
  spec.authors       = ["Taga Yasunori"]
  spec.email         = ["yasukun.taga@gmail.com"]
  spec.summary       = %q{to show today ponpe count.}
  spec.homepage      = "http://dokichupa.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "ruboty"
  spec.add_runtime_dependency "faraday"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

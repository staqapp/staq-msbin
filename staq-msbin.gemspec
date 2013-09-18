# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'msbin/version'

Gem::Specification.new do |spec|
  spec.name          = "staq-msbin"
  spec.version       = MSBIN::VERSION
  spec.authors       = ["Mike Subelsky"]
  spec.email         = ["mike@staq.com"]
  spec.description   = %q{Alpha code for decoding binary XML in the msbin format}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/staqapp/msbin"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  spec.add_development_dependency "bundler", "~> 1.3"
end

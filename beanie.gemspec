# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beanie/version'

Gem::Specification.new do |spec|
  spec.name          = "beanie"
  spec.version       = Beanie::VERSION
  spec.authors       = ["Dermot Tynan"]
  spec.email         = ["dtynan@kalopa.com"]
  spec.summary       = %q{Ruby bindings for the Beanie API}
  spec.description   = %q{Beanie - Your Cloud-Based ERP System. See https://bean.ie for more details.}
  spec.homepage      = "https://bean.ie/help/api/ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'rest-client', "~> 2.0"
  spec.add_dependency 'json'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'portion_control/version'

Gem::Specification.new do |spec|
  spec.name          = "portion_control"
  spec.version       = PortionControl::VERSION
  spec.authors       = ["John Hyland"]
  spec.email         = ["john@djspinmonkey.com"]
  spec.summary       = %q{A gem to allow a RESTful API to provide a given resource at various levels of completeness, or "weight."}
  spec.description   = %q{A gem to allow a RESTful API to provide a given resource at various levels of completeness, or "weight."  Portion Control uses MIME types to specify whether a "lightweight", normal, or "complete" representation is desired.  The intent is that a lightweight representation should not make any calls to other services or include large amounts of data, a normal representation has no particular limitations, and a complete representation should include all available data on a resource.}
  spec.homepage      = "http://github.com/djspinmonkey/portion_control"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end

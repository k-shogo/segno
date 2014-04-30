# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'b-bit-minhash/version'

Gem::Specification.new do |spec|
  spec.name          = "b-bit-minhash"
  spec.version       = BBitMinHash::VERSION
  spec.authors       = ["Shogo Kawaguchi"]
  spec.email         = ["platycod0n.ramosa@gmail.com"]
  spec.summary       = %q{An implementation of the b bit MinHash algorithm in ruby}
  spec.description   = %q{An implementation of the b bit MinHash algorithm in ruby}
  spec.homepage      = "https://github.com/jmhodges/minhash"
  spec.license       = "MIT"

  spec.add_runtime_dependency 'murmurhash3'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end

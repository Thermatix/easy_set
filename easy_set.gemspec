# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_set/version'

Gem::Specification.new do |spec|
  spec.name          = "easy_set"
  spec.version       = EasySet::VERSION
  spec.authors       = ["Martin Becker"]
  spec.email         = ["mbeckerwork@gmail.com"]

  spec.summary       = %q{This Gem allows the easy creation of a settings class}
  spec.homepage      = "https://github.com/Thermatix/easy_set"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

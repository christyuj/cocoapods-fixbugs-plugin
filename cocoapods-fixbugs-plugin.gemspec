# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods/fixbugs/plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-fixbugs-plugin"
  spec.version       = Cocoapods::Fixbugs::Plugin::VERSION
  spec.authors       = ["christ.yuj"]
  spec.email         = ["christ.yuj@alibaba-inc.com"]

  spec.summary       = 'cocoapods 0.38.2的bugfix'
  spec.description   = 'cocoapods 0.38.2的bugfix'
  spec.homepage      = "https://github.com/christ.yuj"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "cocoapods", '~> 0.38'
end

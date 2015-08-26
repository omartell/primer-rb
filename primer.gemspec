# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primer/version'

Gem::Specification.new do |spec|
  spec.name          = 'primer'
  spec.version       = Primer::VERSION
  spec.authors       = ['Oliver Martell']
  spec.email         = ['oliver.martell@gmail.com']

  spec.summary       = 'Prime Numbers Multiplication Table'
  spec.description   = 'Generate the multiplication table of n prime numbers'
  spec.homepage      = 'http://github.com/omartell'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end

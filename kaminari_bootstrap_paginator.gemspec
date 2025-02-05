# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari/bootstrap3/version'

Gem::Specification.new do |spec|
  spec.name          = 'kaminari-bootstrap3'
  spec.version       = Kaminari::Bootstrap3::VERSION
  spec.authors       = ['Chris Beer']
  spec.email         = ['cabeer@stanford.edu']

  spec.summary       = 'Bootstrap styles for kaminari'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'
  spec.add_dependency 'kaminari'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails', '~> 3.0'
  spec.add_development_dependency 'capybara'
end

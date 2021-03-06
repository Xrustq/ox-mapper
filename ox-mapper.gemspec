# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ox/mapper/version'

Gem::Specification.new do |gem|
  gem.name          = 'ox-mapper'
  gem.version       = Ox::Mapper::VERSION
  gem.authors       = ['Alexei Mikhailov']
  gem.email         = %w(amikhailov83@gmail.com)
  gem.summary       = %q{Create SAX parsers based on `ox` with simple DSL}
  gem.homepage      = 'https://github.com/take-five/ox-mapper'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w(lib)

  gem.add_dependency 'ox'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'simplecov'
end
# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ruby-cbr/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["JR Boyens"]
  gem.email         = ["jboyens@fooninja.org"]
  gem.description   = %q{Ruby lib for reading CBR/CBZ (Comic Book Archives)}
  gem.summary       = %q{See description}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ruby-cbr"
  gem.require_paths = ["lib"]
  gem.version       = Ruby::Cbr::VERSION

  gem.add_development_dependency 'rspec', '~> 2.9'
end

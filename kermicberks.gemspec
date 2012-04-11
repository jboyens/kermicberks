# -*- encoding: utf-8 -*-
require File.expand_path('../lib/kermicberks/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["JR Boyens"]
  gem.email         = ["jboyens@fooninja.org"]
  gem.description   = %q{Ruby lib for reading CBR/CBZ (Comic Book Archives)}
  gem.summary       = %q{See description}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "kermicberks"
  gem.require_paths = ["lib"]
  gem.version       = KermicBerks::VERSION

  gem.add_development_dependency 'rspec', '~> 2.9'
  gem.add_development_dependency 'fakefs', '~> 0.4'
  gem.add_development_dependency 'awesome_print', '~> 1.0'
  gem.add_development_dependency 'autotest'

  gem.add_dependency 'activesupport', '~> 3.2'
end

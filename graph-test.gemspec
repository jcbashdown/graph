# -*- encoding: utf-8 -*-
require File.expand_path('../lib/graph-test/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jacob Ashdown"]
  gem.email         = ["jcbashdown@googlemail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "graph-test"
  gem.require_paths = ["lib"]
  gem.version       = Graph::Test::VERSION

  gem.add_dependency 'neography'
  gem.add_development_dependency 'rspec'
end

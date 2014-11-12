# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

description = "A guard that runs a shell command once, even when there are multiple file changes"
Gem::Specification.new do |gem|
  gem.name          = "guard-simple_shell"
  gem.version       = "0.0.2"
  gem.authors       = ["Adam Pearson"]
  gem.email         = ["adam@substantial.com"]
  gem.description   = description
  gem.summary       = description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'guard', ' >= 2.0'
  gem.add_dependency 'rainbow', '>= 1.99.0'

  # - need to determine how to add these dev dependencies per environment (linux needs a different gem...)
  # gem.add_dependency 'rb-fsevent'

end

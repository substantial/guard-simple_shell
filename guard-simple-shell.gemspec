# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "guard-simple_shell"
  gem.version       = "0.0.1"
  gem.authors       = ["Adam Pearson"]
  gem.email         = ["adam@substantial.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'guard'
  gem.add_dependency 'rainbow'

  # - need to determine how to add these dev dependencies per environment (linux needs a different gem...)
  # gem.add_dependency 'rb-fsevent'

end

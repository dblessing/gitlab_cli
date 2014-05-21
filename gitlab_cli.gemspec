# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitlab_cli/version'

Gem::Specification.new do |gem|
  gem.name          = "gitlab_cli"
  gem.version       = GitlabCLI::VERSION
  gem.authors       = ["Drew A. Blessing"]
  gem.email         = ["drew.blessing@me.com"]
  gem.description   = %q{Command line interface for GitLab}
  gem.summary       = %q{A command line interface for GitLab}
  gem.homepage      = "https://github.com/dblessing/gitlab_cli"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'thor'
  gem.add_runtime_dependency 'gitlab'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'spinach'
  gem.add_development_dependency 'webmock'
end

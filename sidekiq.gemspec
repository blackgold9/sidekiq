# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sidekiq/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Perham"]
  gem.email         = ["mperham@gmail.com"]
  gem.description   = gem.summary = "Simple, efficient message processing for Ruby"
  gem.homepage      = "http://mperham.github.com/sidekiq"

  gem.executables   = ['sidekiq', 'sidekiqctl']
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "sidekiq"
  gem.require_paths = ["lib"]
  gem.version       = Sidekiq::VERSION
  gem.add_dependency                  'redis'
  gem.add_dependency                  'redis-namespace'
  gem.add_dependency                  'connection_pool', '~> 0.9.0'
  gem.add_dependency                  'celluloid', '~> 0.10.0'
  gem.add_dependency                  'multi_json', '~> 1.0'
  gem.add_development_dependency      'minitest'
  gem.add_development_dependency      'sinatra'
  gem.add_development_dependency      'slim'
  gem.add_development_dependency      'rake'
  gem.add_development_dependency      'actionmailer', '~> 3'
  gem.add_development_dependency      'activerecord', '~> 3'
end

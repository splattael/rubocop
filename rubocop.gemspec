# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/version'

Gem::Specification.new do |s|
  s.name = 'rubocop'
  s.version = Rubocop::Version::STRING
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.9.2'
  s.authors = ['Bozhidar Batsov']
  s.date = '2013-04-17'
  s.description = <<-EOF
    Automatic Ruby code style checking tool.
    Aims to enforce the community-driven Ruby Style Guide.
  EOF

  s.email = 'bozhidar@batsov.com'
  s.executables = ['rubocop']
  s.extra_rdoc_files = ['LICENSE.txt', 'README.md']
  s.files = ['.document',
             '.rspec',
             '.rubocop.yml',
             '.travis.yml',
             'CHANGELOG.md',
             'CONTRIBUTING.md',
             'Gemfile',
             'LICENSE.txt',
             'README.md',
             'Rakefile',
             'bin/rubocop',
             'rubocop.gemspec'] + Dir['lib/**/*.rb']

  s.test_files = Dir['spec/**/*.rb']
  s.homepage = 'http://github.com/bbatsov/rubocop'
  s.licenses = ['MIT']
  s.require_paths = ['lib']
  s.rubygems_version = '1.8.23'
  s.summary = 'Automatic Ruby code style checking tool.'

  s.add_runtime_dependency('rainbow', '>= 1.1.4')
  s.add_development_dependency('rake', '~> 10.0')
  s.add_development_dependency('rspec', '~> 2.13')
  s.add_development_dependency('yard', '~> 0.8')
  s.add_development_dependency('bundler', '~> 1.3')
  s.add_development_dependency('simplecov', '~> 0.7')
end

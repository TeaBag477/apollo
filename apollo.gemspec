# frozen_string_literal: true

require_relative 'lib/apollo/version'

Gem::Specification.new do |spec|
  spec.name          = 'apollo'
  spec.version       = Apollo::VERSION
  spec.authors       = ['Danylo Novikov']
  spec.email         = ['danylo.novikov@yahoo.com']

  spec.summary       = 'Gem for build chat bot.'
  spec.description   = 'Use Apollo to generate a chat bot project with convenient scalability, as well as the ability to
 use generators both in Ruby on Rails and also, if necessary, connect to a database using ActiveRecord'
  spec.homepage      = 'https://github.com/TeaBag477/apollo'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['homepage_uri'] = 'https://github.com/TeaBag477/apollo'
  spec.metadata['source_code_uri'] = 'https://github.com/TeaBag477/apollo'
  spec.metadata['changelog_uri'] = 'https://github.com/TeaBag477/apollo'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = 'bin'
  spec.executables   = 'apollo'
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'backtrace', '>=0.3'
  spec.add_runtime_dependency 'rainbow', '3.0.0'
  spec.add_runtime_dependency 'rake', '~> 13.0'
  spec.add_runtime_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency 'rubocop', '~> 1.21'
  spec.add_runtime_dependency 'slop', '4.6.2'
  spec.metadata['rubygems_mfa_required'] = 'true'
end

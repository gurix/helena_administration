$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'helena_administration/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'helena_administration'
  s.version     = HelenaAdministration::VERSION
  s.authors     = ['Markus Graf']
  s.email       = ['info@markusgraf.ch']
  s.homepage    = 'https://github.com/gurix/helena_administration'
  s.summary     = 'Helena Administration is a simple rails application that provides a user interface to manage apps running with the Helena framework.'
  s.description = 'Helena Administration is a simple rails application that provides a user interface to manage apps running with the Helena framework.'
  s.license     = 'GPL3'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")

  s.add_runtime_dependency 'codemirror-rails', '>= 5'
  s.add_runtime_dependency 'kaminari-actionview'
  s.add_runtime_dependency 'kaminari-mongoid'
  s.add_runtime_dependency 'rails', '>= 4.2'
  s.add_runtime_dependency 'slim-rails', '>= 3.0'
  s.add_dependency 'haml-rails', '>= 0.5'
  s.add_dependency 'helena', '~> 2.0'
  s.add_dependency 'jquery-rails', '~> 4'
  s.add_dependency 'mongoid', ['>= 4.0']
  s.add_dependency 'mongoid-simple-tags', '~> 0.1'
  s.add_dependency 'mongoid_orderable', '~> 5.2'
  s.add_runtime_dependency 'sass-rails', '~> 5.0'
  s.add_dependency 'breadcrumbs_on_rails', '>= 3.0.1'
  s.add_dependency 'rails-i18n'
  s.add_dependency 'simple_form', '~> 4'
  s.add_runtime_dependency 'coffee-rails', '~> 4.1'
  s.add_runtime_dependency 'font-awesome-sass'
  s.add_dependency 'bootstrap', '>= 4.3.1'
  s.add_dependency 'responders', '~> 2.0'

  s.add_development_dependency 'rspec-collection_matchers', '~> 1'
  s.add_development_dependency 'rspec-rails', '~> 3'
end

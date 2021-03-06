$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kono_mailup/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = "kono_mailup"
  s.version = KonoMailup::VERSION
  s.authors = ["Marino Bonetti"]
  s.email = ["marinobonetti@gmail.com"]
  s.homepage = "https://github.com/ArchimediaZerogroup/KonoMailup"
  s.summary = "Mailup Layer"
  s.description = "KonoMailup is a Mailup layer for rails applications that
                    provides configuration and saving of user tokens; with mailup
                    gems for autentication/authorization and api connector"
  s.license = "MIT"

  files = `git ls-files -z`.split("\x0")

  s.files = Dir["{app,config,db,lib}/**/*",
                "vendor/mailup-ruby/{lib,rails}/**/*",
                "vendor/omniauth-mailup/lib/**/*",
                "MIT-LICENSE",
                "Rakefile",
                "README.md"]

  s.test_files = files.grep(%r{^(spec)/})

  s.add_runtime_dependency 'rails'

  # Temporaly Dependency Downloaded in Vendor, waiting that it will be upgraded
  # s.add_runtime_dependency 'mailup', ['~> 1.2']
  #
  # dependency for vendored mailup, remove after using directly the gem
  s.add_runtime_dependency 'oauth2', '~> 1.0'

  # Temporaly Dependency Downloaded in Vendor, waiting that it will be upgraded
  # s.add_runtime_dependency 'omniauth-mailup', ['~> 0.0.5']
  #
  # dependency for vendored omniauth-mailup, remove after using directly the gem
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.3'
  s.add_runtime_dependency 'multi_json', '~> 1.10'


  s.add_runtime_dependency 'rails-settings-cached', ['~> 0.6.6']

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'factory_girl_rails', '~> 4.5'

end

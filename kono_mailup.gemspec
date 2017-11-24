$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kono_mailup/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kono_mailup"
  s.version     = KonoMailup::VERSION
  s.authors     = ["Marino Bonetti"]
  s.email       = ["marinobonetti@gmail.com"]
  s.homepage    = "https://github.com/ArchimediaZerogroup/KonoMailup"
  s.summary     = "Mailup Layer"
  s.description = "KonoMailup is a Mailup layer for rails applications that
                    provides configuration and saving of user tokens; with mailup
                    gems for autentication/authorization and api connector"
  s.license     = "MIT"


  files = `git ls-files -z`.split("\x0")

  s.files = files.grep(%r{^(app|config|db|lib)/}) + %w(MIT-LICENSE Rakefile README.rdoc)

  s.test_files = files.grep(%r{^(spec)/})


  s.add_dependency "rails", "~> 4.2.10"
  s.add_dependency 'mailup', '~> 1.2'
  s.add_dependency 'omniauth-mailup'

  s.add_development_dependency "sqlite3"

  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'factory_girl_rails', '~> 4.5'

end

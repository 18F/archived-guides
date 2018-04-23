# -*- encoding: utf-8 -*-
# stub: toml 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "toml"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jeremy McAnally", "Dirk Gadsden"]
  s.date = "2014-10-16"
  s.description = "Parse your TOML, seriously."
  s.email = "jeremy@github.com"
  s.extra_rdoc_files = ["README.md", "LICENSE", "CHANGELOG.md"]
  s.files = ["CHANGELOG.md", "LICENSE", "README.md"]
  s.homepage = "http://github.com/jm/toml"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.rubygems_version = "2.4.6"
  s.summary = "Parse your TOML."

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<parslet>, ["~> 1.5.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<parslet>, ["~> 1.5.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<parslet>, ["~> 1.5.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end

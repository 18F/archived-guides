# -*- encoding: utf-8 -*-
# stub: guides_style_18f 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "guides_style_18f"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mike Bland"]
  s.date = "2015-08-22"
  s.description = "Provides consistent style elements for documents based on the 18F Guides Template (https://pages.18f.gov/guides-template/). The 18F Guides theme is based on DOCter (https://github.com/cfpb/docter/) from CFPB (http://cfpb.github.io/)."
  s.email = ["michael.bland@gsa.gov"]
  s.homepage = "https://github.com/18F/guides-style"
  s.licenses = ["CC0"]
  s.rubygems_version = "2.4.6"
  s.summary = "18F Guides Template style elements"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<jekyll>, ["~> 2.5"])
      s.add_runtime_dependency(%q<sass>, ["~> 3.4"])
      s.add_runtime_dependency(%q<rouge>, ["~> 1.9"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<jekyll>, ["~> 2.5"])
      s.add_dependency(%q<sass>, ["~> 3.4"])
      s.add_dependency(%q<rouge>, ["~> 1.9"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<jekyll>, ["~> 2.5"])
    s.add_dependency(%q<sass>, ["~> 3.4"])
    s.add_dependency(%q<rouge>, ["~> 1.9"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end

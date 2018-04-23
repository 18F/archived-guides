# -*- encoding: utf-8 -*-
# stub: celluloid 0.16.0 ruby lib

Gem::Specification.new do |s|
  s.name = "celluloid"
  s.version = "0.16.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tony Arcieri"]
  s.date = "2014-09-05"
  s.description = "Celluloid enables people to build concurrent programs out of concurrent objects just as easily as they build sequential programs out of sequential objects"
  s.email = ["tony.arcieri@gmail.com"]
  s.homepage = "https://github.com/celluloid/celluloid"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.4.6"
  s.summary = "Actor-based concurrent object framework for Ruby"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<timers>, ["~> 4.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<timers>, ["~> 4.0.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<timers>, ["~> 4.0.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.14.1"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<benchmark_suite>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end

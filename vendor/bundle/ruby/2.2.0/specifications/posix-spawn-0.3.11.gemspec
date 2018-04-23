# -*- encoding: utf-8 -*-
# stub: posix-spawn 0.3.11 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "posix-spawn"
  s.version = "0.3.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Tomayko", "Aman Gupta"]
  s.date = "2015-04-07"
  s.description = "posix-spawn uses posix_spawnp(2) for faster process spawning"
  s.email = ["r@tomayko.com", "aman@tmm1.net"]
  s.executables = ["posix-spawn-benchmark"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["COPYING", "HACKING"]
  s.files = ["COPYING", "HACKING", "bin/posix-spawn-benchmark", "ext/extconf.rb"]
  s.homepage = "https://github.com/rtomayko/posix-spawn"
  s.licenses = ["MIT", "LGPL"]
  s.rubygems_version = "2.4.6"
  s.summary = "posix_spawnp(2) for ruby"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, ["= 0.7.6"])
      s.add_development_dependency(%q<minitest>, [">= 4"])
    else
      s.add_dependency(%q<rake-compiler>, ["= 0.7.6"])
      s.add_dependency(%q<minitest>, [">= 4"])
    end
  else
    s.add_dependency(%q<rake-compiler>, ["= 0.7.6"])
    s.add_dependency(%q<minitest>, [">= 4"])
  end
end

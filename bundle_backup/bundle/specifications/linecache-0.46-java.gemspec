# -*- encoding: utf-8 -*-
# stub: linecache 0.46 java lib

Gem::Specification.new do |s|
  s.name = "linecache"
  s.version = "0.46"
  s.platform = "java"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["R. Bernstein"]
  s.date = "2011-10-06"
  s.description = "LineCache is a module for reading and caching lines. This may be useful for\nexample in a debugger where the same lines are shown many times.\n"
  s.email = "rockyb@rubyforge.net"
  s.extra_rdoc_files = ["README", "lib/linecache.rb", "lib/linecache/tracelines.rb"]
  s.files = ["README", "lib/linecache.rb", "lib/linecache/tracelines.rb"]
  s.homepage = "http://rubyforge.org/projects/rocky-hacks/linecache"
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = "rocky-hacks"
  s.rubygems_version = "2.4.5"
  s.summary = "Read file with caching"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version
end

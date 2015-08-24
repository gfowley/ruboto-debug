# -*- encoding: utf-8 -*-
# stub: ruby-debug 0.10.5.rc9 ruby cli

Gem::Specification.new do |s|
  s.name = "ruby-debug"
  s.version = "0.10.5.rc9"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["cli"]
  s.authors = ["Kent Sibilev"]
  s.date = "2013-11-12"
  s.description = "A generic command line interface for ruby-debug.\n"
  s.email = "ksibilev@yahoo.com"
  s.executables = ["rdebug"]
  s.extra_rdoc_files = ["README"]
  s.files = ["README", "bin/rdebug"]
  s.homepage = "https://github.com/ruby-debug/"
  s.rubygems_version = "2.4.5"
  s.summary = "Command line interface (CLI) for ruby-debug-base"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<columnize>, [">= 0.1"])
      s.add_runtime_dependency(%q<ruby-debug-base>, ["~> 0.10.5.rc9.0"])
    else
      s.add_dependency(%q<columnize>, [">= 0.1"])
      s.add_dependency(%q<ruby-debug-base>, ["~> 0.10.5.rc9.0"])
    end
  else
    s.add_dependency(%q<columnize>, [">= 0.1"])
    s.add_dependency(%q<ruby-debug-base>, ["~> 0.10.5.rc9.0"])
  end
end

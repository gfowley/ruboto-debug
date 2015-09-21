#! /bin/bash --login
# login shell so rvm functions be loaded

# Assumes Gemfile and Gemfile.apk contain...
#
#   source "file:///home/gerard/dev/ruboto-debug/gemdir"
#   gem 'columnize',       '0.9.0'
#   gem 'linecache',       '1.3.1'
#   gem 'ruby-debug-base', '0.10.6'
#   gem 'ruby-debug',      '0.10.6'
#
# cannot use git: or path: options for ruby-debug gems above because ruby-debug repository contains both gems and uses 'cli' dir instead of 'lib'

# cd current dir so rvm can set ruby version@gemset from .ruby-version/gemset files
cd .
rm -v gemdir/gems/ruby-debug*.gem
cp -vp ../ruby-debug/pkg/ruby-debug-0.10.6.gem gemdir/gems
cp -vp ../ruby-debug/pkg/ruby-debug-base-0.10.6-java.gem gemdir/gems
gem generate --directory=gemdir
rm -v Gemfile.lock
rm -v Gemfile.apk.lock
gem uninstall ruby-debug --executables
gem uninstall ruby-debug-base
bundle
rm -v libs/bundle.jar
rake bundle


#! /usr/bin/env ruby

# jruby interpreted mode required to use debugger
# jruby -Xcompile.mode=OFF --debug ./dtest.rb

require 'ruby-debug'

puts "program start"

# local debugging...
# Debugger.start
# puts "debugger start"

# remote debugging...
Debugger.wait_connection = true
Debugger.start_remote
puts "debugger start_remote"

def do_it x
  puts x * x
end

puts "pre debugger"
debugger
puts "post debugger"

20.times do |n|
  do_it n
  sleep 1
end

puts "program finish"


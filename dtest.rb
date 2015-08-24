#! /usr/bin/env ruby

# jruby interpreted mode required to use debugger from ruby
# ruby -Xcompile.mode=OFF ./dtest.rb

# load and start debugger immediately
# require 'ruby-debug/debugger'

require 'ruby-debug'

puts "program start"

# local debugging...
# Debugger.start

# remote debugging...
Debugger.wait_connection = true
Debugger.start_remote

puts "debugger start_remote"

def doit x,y
  z = x * y
  puts z
end

puts "pre debugger"

debugger

puts "post debugger"

@keep_going = true
@n = 0

while @keep_going do
  @n += 1
  doit 1, @n
end

puts "program finish"


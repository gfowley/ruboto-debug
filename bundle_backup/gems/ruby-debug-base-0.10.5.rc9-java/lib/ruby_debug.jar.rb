require 'jruby'
puts 'Starting Ruby Debug Service'
public
Java::RubyDebugService.new.basicLoad(JRuby.runtime)


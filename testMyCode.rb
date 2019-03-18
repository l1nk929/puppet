require 'optparse'

ARGV.options do |opts|
  opts.banner = "Usage: example.rb [options]"
  p opts
end
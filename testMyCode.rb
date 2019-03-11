require "date"
# def hello(name)
#   print "hello,#{name}\n"
# end
# hello "link"
# sayBye "link"
#
# days = Date.today-Date.new(1991,9,27)
# p days.to_i
# print days
# $
# a =
# p a
# puts "a:#{a}"
a = [10,"abc",[1,2,3],Date.new(1990)]
# unless a<9 then
#   print a
# end
a.each do |item|
  case item
  when Numeric
    puts "#{item} is Numeric"
  when String
    puts "#{item} is String"
  when Array
    puts "#{item} is Array"
  else
    puts "No Class."
  end
end
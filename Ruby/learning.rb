#!/usr/share/rvm/rubies/ruby-3.3.6/bin/ruby
require 'date'

# This is a Ruby learning script

#     A multiline comment!
#
#     This is the ruby multiline comment syntax

A_CONSTANT = 1
#  You can reasing a value to constants but only the intepreter will show a warning
# A_CONSTANT = 2

a = 1
b = 2

print "Hello world!\n"
print a
print b
print "\n"
print "\n"

print b.class
print "\n"
print b.is_a? Integer
# better version than kind_of? based on linter
print b.is_a? Integer
print "\n"
print "\n"

print b.to_f
print "\n"
print b.to_s.class
print "\n"
print "\n"

$gl = 2 # Global
print defined? $gl
print "\n"
@in = 3 # Instance
print defined? @in
print "\n"
lo = 4 # Local
print defined? lo
print "\n"
# _ is used only for variables that are not in use
_lo2 = 5 # Local
print defined? _lo2
print "\n"
CONST = 6 # Constant
print defined? CONST
print "\n"
# @@cl = 7

def method
  print "This is a method\n"
end

method

def method_with_args(arg1, arg2)
  print arg1
  print "\n"
  print arg2
  print "\n"
  print arg1 * arg2
  print "\n"
end

method_with_args(1, 2)

def method_with_return(arg1, arg2)
  arg1 * arg2
end

print method_with_return(2, 3)

print("\n")
print((1..10).to_a)    # Creates a range from 1 to 10 inclusive
print("\n")

print((1...10).to_a)   # Creates a range from 1 to 9
print("\n")

print(('a'..'z').to_a)
print("\n")

print ('a'...'z').to_a
print("\n")

print(('cab'..'car').to_a)
print("\n")

print(('cab'..'car').to_a.include?('car'))
print("\n")

print((1..10).min)
print("\n")

print((1..10).max)
print("\n")
print("\n")

(1..10).each { |num| puts num }
print("\n")

print((1..10).reject { |num| num.even? })
# print ('cab'..'car').reject {|subrange| subrange < 'cal'} # reject values below a specified range value
print("\n")

# while input = gets
# puts input + " triggered" if input =~ /start/ .. input =~ /end/
# end

# includes in range
print((1..15).include?(12))
print("\n")

print((1..15).include?(16))
print("\n")

score = 70

result = case score
         when 0..40
           'Fail'
         when 41..60
           'Pass'
         when 61..70
           'Pass with Merit'
         when 71..100
           'Pass with Distinction'
         else 'Invalid Score'
         end

puts result

new_array = []
print(new_array)
print("\nInitial: #{new_array.size}\n")
new_array.push(2)
print("After push: #{new_array.size}\n")

newarray2 = Array.new(2)
print("Iniutial 2: #{newarray2.size}\n")

new_array_empty = []
print("Initial empty: #{new_array_empty.size}\n")
print("Empty size: #{new_array_empty.empty?}\n")

new_array_num = (1..10).to_a
print("Initial range: #{new_array_num.size} \n")
print("First: + #{new_array_num.first} \n")
print("Last: ' + newArrayNum.last \n")
print("Subset from 1 to 5 position (starting from 0) 1: ' + #{new_array_num[1, 5]} \n")
print("Subset from 1 to 5 position (starting from 0) 2: ' + #{new_array_num[1..5]} \n")

concated_array = new_array_num.concat(new_array)
concated_array << 3
concated_array.push(4)
concated_array.pop

print "#{concated_array}\n"

print "#{concated_array.slice(1, 4)}\n"

operating_systems = %w[Fedora SuSE RHEL Windows MacOS]
linux_systems = %w[RHEL SuSE PCLinuxOS Ubuntu Fedora]

print("\n #{operating_systems} \n")
print("#{linux_systems}\n\n")

print("Difference: #{operating_systems - linux_systems}\n") # diference
print("Union: #{operating_systems | linux_systems}\n") # union
print("Intersection: #{operating_systems & linux_systems}\n") # intersection

arr = %w[F T F I C I O] # arr = ["F", "T", "F", "I", "C", "I", "O"]

print("#{arr}\n")
print("#{arr.uniq}\n") # returns new array
print("#{arr.uniq!}\n") # affects the original array
print("#{arr}\n")

arr.insert(1, 'W')

arr.delete_at(0)

arr.delete('C')

arr.sort

print("After Mod #{arr} \n")
arr.sort!
print("After Sort #{arr}\n")
arr.reverse!
print("After Reverse #{arr} \n")

#     <=>
#     Returns:
#     * 0 if first operand equals second
#     * 1 if first operand is greater than the second
#     * -1 if first operand is less than the second.
print("#{2 <=> 1}\n")

# This is a documentation
class OperatingSystem
  # getter and setter
  attr_accessor :name, :version

  def initialize(name, version)
    @name = name
    @version = version
  end

  def update_minor_version
    @version += 0.1
  end

  def update_major_version
    @version += 1
  end
end

os = OperatingSystem.new('ubuntu', 22.4)

print("Name: #{os.name}\n")
print("Version: #{os.version}\n")
os.update_minor_version
print("Version after minor update: #{os.version}\n")
os.update_major_version
print("Version after major update: #{os.version}\n")

print "-------------------------------------------\n"

os.name = 'Lubuntu'
os.version = 18.4

print("Name: #{os.name}\n")
print("Version: #{os.version}\n")
os.update_minor_version
print("Version after minor update: #{os.version}\n")
os.update_major_version
print("Version after major update: #{os.version}\n\n")

i = 0
until i == 5
  puts i
  i += 1
end

puts "\n"

print 'Apple' == 'apple' # case sensitive
puts "\n"
print 'Apple'.casecmp 'apple' # case insensitive comparison
puts "\n"

a_string = 'This is a coding excercise for Javascript!'
print("#{a_string}\n")

a_string['Javascript'] = 'Ruby'
print("#{a_string}\n")

a_string[a_string.length - 1] = ' for AOC!'
print("#{a_string}\n\n")

another_string = 'This is a random string'
print("#{another_string}\n")

another_string.gsub!('random', 'specific')
print("#{another_string}\n")

another_string.replace('This is THE String!')
print("#{another_string}\n")

print("#{another_string * 3}\n")

# string to array
array_from_string = 'ABCDEFGHIJKLMNOP'.split
print("#{array_from_string}\n")
splitted_array_from_string = 'ABCDEFGHIJKLMNOP'.split(//) # regex
print("#{splitted_array_from_string}\n")

array_from_string_v2 = 'ABCDEFGH IJKLMNOP'.split(' ')
print("#{array_from_string_v2}\n")

print("#{'this string need first letter capitalization!'.capitalize}\n")
print("#{'this is an UPERCASE string.'.upcase}\n")
print("#{'this is an DOWNCASE string.'.downcase}\n")
print("#{'this is an SWAPCASE string.'.swapcase}\n")

print("String `1000` to integer: #{'1000'.to_i}\n")
print("String `10.5` to float: #{'10.5'.to_f}\n")
print("String `10.5` to integer: #{'10.5'.to_i}\n")

print("#{'ff'.to_sym}\n")

# Directory stafffff
print("#{Dir.pwd}\n")
Dir.chdir('/tmp')
print("#{Dir.pwd}\n")
print("List:\n")
Dir.entries('.').each { |entry| print(" * #{entry}\n") }
puts("----------AnotherWay(Directly from Dir)---------- \nListing:\n")
Dir.foreach('.').each { |entry| print(" - #{entry}\n") }
puts("\n\n")

# File stafffff
file_pwd = "#{Dir.pwd}/test.txt"

File.new(file_pwd, 'w') unless File.exist?(file_pwd)

if !File.readable?(file_pwd) || !File.file?(file_pwd)
  print("Can't read this file")
else
  file = File.open(file_pwd, 'r+')
  file.write("Hello this a ruby created file\n") unless file.closed?
  file.write("This is the second line of the ruby created file!\n") unless file.closed?
  file.write("The last line!\n") unless file.closed?
  file.rewind

  puts("----------Reading the file......----------\n")
  begin
    loop do
      puts file.readline
    end
  rescue EOFError
    puts("\n")
    puts("----------EOF reached----------\n\n")
  end

  print("Is the file open? Re: #{!file.closed?}\n")
  print("Nice lets close the file\n") unless file.closed?
  file.close unless file.closed?

  new_file_pwd = "#{Dir.pwd}/delete.txt"
  result = File.rename(file_pwd, new_file_pwd)
  print("File renamed successfully to delete.txt (Code: #{result})\n") if result.zero?
  print("File failed to be renamed (Code: #{result})\n") if result != 0

  result = File.delete(new_file_pwd)
  print("File deleted successfully (Code: #{result})\n") if result == 1
  print("File failed to delete (Code: #{result})\n") if result != 1
end


past = DateTime.new(2020, 3, 11)
now = DateTime.now

difference = now - past

print("\n\n------------------Dates------------------\n\n")
print("Past #{past}\n")
print("Now: #{now}\n")
print("Difference: #{difference.to_i} days\n")

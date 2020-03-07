# # Comment
# print "Enter a Value: "

# first_num = gets.to_i

# print "Enter another Value: "

# second_num = gets.to_i

# puts first_num.to_s + " + " + second_num.to_s + " = " + (first_num + second_num).to_s

# # Arithmetic Operators
# puts "6 + 4 = " + (6+4).to_s 
# puts "6 - 4 = " + (6-4).to_s 
# puts "6 / 4 = " + (6/4).to_s 
# puts "6 * 4 = " + (6*4).to_s 
# puts "6 % 4 = " + (6%4).to_s 

# # Floats must have a number in front of the decimal
# num_one = 1.000

# num99 = 0.999

# puts num_one.to_s + " - " + num99.to_s + " = " + (num_one - num99).to_s

# # floats will have 15 digits of accuracy
# big_float = 1.12345678901234

# puts (big_float + 0.0000000000000056).to_s

# puts 1.class
# puts 1.1234.class
# puts "string".class

# # Constants start with a capital letter, can change value but will get a warning message
# A_CONSTANT = 31.4
# A_CONSTANT = 5.4

# puts A_CONSTANT


# File Handling
# CREATING A FILE, WRITING TO IT AND CLOSING IT
# write_handler = File.new("yourSum.out", "w")

# write_handler.puts("Random Text").to_s

# write_handler.close

# data_from_file = File.read("yourSum.out")

# puts data_from_file

# RUNNING ANOTHER RUBY FILES CODE
# load "rubyOrNotRuby.rb"

=begin
Multiline comments
can be done this way
=end

# CONDITIONALS
# age = 12

# if (age >= 5) && (age <= 6)
#   puts "You're in Kindergarten"
# elsif (age >= 7) && (age <= 13)
#   puts "You're in Middle School"
#   puts "Yay"
# else
#   puts "Stay home"
# end

# # Comparison : == != < > <= >=
# # Logical : && || ! and or not
# puts "true && false " + (true && false).to_s
# puts "true || false " + (true || false).to_s
# puts "!false " + (!false).to_s

# # Check if the first is les than the second: returns -1 if false, 1 if true, 0 if equal
# puts "5 <=> 10 = " + (5 <=> 10).to_s
# puts "5 <=> 10 = " + (50 <=> 10).to_s
# puts "5 <=> 10 = " + (50 <=> 50).to_s

# unless age > 4
#   puts "No School"
# else
#   puts "Go to school"
# end

# puts "You're Young" if age < 30

# print "Enter Greeting : "

# # CHOMP will remove the \n that gets appended to a string end 
# greeting = gets.chomp

# case greeting
# when "French", 'french'
#   puts "Bonjour"
#   exit
# when "Spanish", 'spanish'
#   puts "Hola"
#   exit
# else "English"
#   puts "Hello"
# end

# age = 12

# puts (age >= 50) ? "Old" : "Young"

# # LOOPS

# x = 1

# loop do
#   x += 1 # x = x + 1

#   next unless (x % 2) == 0
#   puts x

#   break if x >= 10
# end

# y = 1

# while y <= 10
#   y += 1
#   next unless (y % 2) == 1
#   puts y

#   break if y >= 11
# end

# a = 1

# until a >= 10
#   a += 1
#   next unless (a % 2) == 0
#   puts a
# end

# numbers = [1,2,3,4,5]

# for number in numbers
#   # puts "#{number}, "
#   print "#{number}, "
# end

# groceries = ['banana', 'sweet potato', 'olives', 'cheese']

# groceries.each do |food|
#   puts "Get Some #{food}"
# end

# # A Range of Numbers
# (0..5).each do |i|
#   puts i
#   puts "# #{i}"
# end

# FUNCTIONS
# def add_nums(num1, num2)
#   return num1.to_i + num2.to_i
# end

# puts add_nums(3,4)

# x = 1

# # FUNCTIONS CANNOT CHANGE OUTSIDE VALUES
# def change_x(x)
#   x = 4
# end

# change_x(x)

# puts "x = #{x}" # returns 1

# EXCEPTIONS

# print "Enter a Number: "
# first_num = gets.to_i
# print "Enter Another: "
# second_num = gets.to_i

# begin
#   answer = first_num / second_num

# rescue
#   puts "You can't divide by zero"
#   exit
# end

# puts "#{first_num} / #{second_num} = #{answer}"
# age = 12

# def check_age(age)
#   raise ArgumentError, "Enter Positive Number" unless age > 0
# end

# begin
#   check_age(-1)
# rescue ArgumentError
#   puts "That is not possible"
# end

# STRINGS: single vs double quote -> single doesn't escape code
# puts "Add Them #{4 + 5} \n\n" # Add Them 9
# puts 'Add Them #{4 + 5} \n\n' # Add Them #{4 + 5} \n\n

# # Multiline Strings
# multiline_string = <<EOM
# This is a very long string
# that containers interpolation
# like #{4 + 5} \n\n
# EOM

# print multiline_string
# first_name = "Sean"
# middle_name = "Adam"
# last_name = "Pheneger"
# full_name = first_name + last_name
# full_full_name = "#{first_name} #{middle_name} #{last_name}"

# puts full_full_name.include?("Adam")
# puts full_full_name.size

# # COUNTS TOTAL OF ALL PASSED ARGUMENTS
# puts "Vowels : " + full_full_name.count("aeiou").to_s
# # ^ == not 
# puts "Consonants : " + full_full_name.count("^aeiou").to_s

# puts full_full_name.start_with?("Pheneger")

# puts "Index : " + full_name.index("Pheneger").to_s

# # Check is objects are same instances
# puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s

# puts first_name.equal?first_name

# puts full_full_name.upcase
# puts full_full_name.downcase
# puts full_full_name.swapcase

# # Removing white space on left, on right, on both
# full_full_name = full_full_name.lstrip
# full_full_name = full_full_name.rstrip
# full_full_name = full_full_name.strip

# # when justifying strings, can select amount of spaces to jsutify and select what to append if there is extra
# puts full_full_name.rjust(20, ".") # ..Sean Adam Pheneger
# puts full_full_name.ljust(20, ".") # Sean Adam Pheneger..
# puts full_full_name.center(20, ".") # .Sean Adam Pheneger.

# # REMOVING FROM THE BACK
# puts full_full_name.chop # removes last
# puts full_full_name.chomp("eger") # removes white space if nothing is specified or removes the specified ending if passed an argument

# # REMOVE ALL SPECIFIED INSTANCES OF ARGUMENT PASSED TO DELETE
# puts full_full_name.delete("a")

# # CONVERT STRING TO ARRAY, SPECIFY WHAT TO SPLIT ON OR PASS NOTHING TO SPLIT ON NEW CHARACTERS

# name_array = full_full_name.split(//)

# puts name_array

# name_array = full_full_name.split(/ /)

# puts name_array

# to_i == to integer
# to_s == to string
# to_f == to float
# to_sym = to symbol

# ESCAPE SEQUENCES
# \\ Backslash
# \' Single-Quote
# \" Double-Quote
# \a Bell
# \b Backspace
# \f FormFeed
# \n Newline
# \r Carriage
# \t Tab
# \v Vertical Tab

# # OBJECTS
# class Animal
#   def initialize
#     puts "Creating as New Animal"
#   end

#   def set_name(new_name)
#     @name = new_name
#   end

#   def get_name
#     @name
#   end

#   # def name=(new_name)
#   #   if new_name.is_a?(Numeric)
#   #     puts "Name can't be a number"
#   #   else
#   #     @name = new_name
#   #   end
#   # end
# end

# cat = Animal.new

# cat.set_name("Jager")

# puts cat.get_name

# puts cat.name

# cat.name = ("Yoyo")

# puts cat.name

# CREATE ALL GETTERS AND SETTERS 
# class Dog
#   # attr_reader :name, :height, :weight  # GETTERS
#   # attr_writer :name, :height, :weight  # SETTERS
#   attr_accessor :name, :height, :weight  # BOTH GETTERS AND SETTERS

#   def bark
#     return "Generic bark"
#   end
# end

# rover = Dog.new

# rover.bark

# rover.name = "Rover"

# puts rover.name

# class GermanShepard < Dog
#   def bark
#     return "Load Bark"
#   end
# end

# max = GermanShepard.new

# max.name = "Max"

# printf "%s goes %s \n", max.name, max.bark()

# MODULES -> to get require_relative the modules must be in the same directory
# require_relative "human"
# require_relative "smart"

# module Animal
#   def make_sound
#     print "Grrr"
#   end
# end

# class Dog
#   include Animal
# end

# rover = Dog.new
# rover.make_sound

# class Scientist
#   include Human
#   prepend Smart # prepend ensures the modules function is available in both locations (wont eb overwritten)

#   def act_smart # THIS WON"T GET CALLED AS THE PREPEND  OF SMART WAS ADDED AND IT HAS A METHOD OF THE SAME NAME
#     return "E = mc^2"
#   end
# end

# einstein = Scientist.new

# einstein.name = "Albert"

# puts einstein.name

# einstein.run

# puts einstein.name + " says " + einstein.act_smart

# POLYMORPHISM
# class Bird
#   def tweet(bird_type)
#     bird_type.tweet
#   end
# end

# class Cardinal < Bird
#   def tweet
#     puts "Tweet Tweet"
#   end
# end

# class Parrot < Bird
#   def tweet
#     puts "SQUAWK"
#   end
# end

# generic_bird = Bird.new
# generic_bird.tweet(Cardinal.new)
# generic_bird.tweet(Parrot.new)

# SYMBOLS
# :sean

# puts :sean
# puts :sean.to_s
# puts :sean.class
# puts :sean.object_id

# ARRAYS
# array_1 = Array.new
# array_2 = Array.new(5)
# array_3 = Array.new(5, "EMPTY")
# array_4 = [1, "two", 3, 4.5]

# puts array_4[2]
# puts array_4[2,2].join(", ")
# puts array_4.values_at(0, 1, 3).join(", ")

# # ADD TO BEGINNING
# array_4.unshift(0)
# # REMOVE FIRST ITEM
# array_4.shift()
# #ADD TO END
# array_4.push(100,200)
# #REMOVE FROM END
# array_4.pop

# array_4.concat([10,20,30])

# puts "Array Size : " + array_4.size().to_s
# puts "Array Contains 100 : " + array_4.include?(100).to_s
# puts "How Many 100s : " + array_4.count(100).to_s
# puts "Array Empty : " + array_4.empty?().to_s

# p array_4

# array_4.each do |value|
#   puts value
# end


# HASHES
# number_hash = {"PI" => 3.14, "Golden" => 1.618, "e" => 2.718 }

# puts number_hash["PI"]

# superheroes = Hash["Clark Kent", "superman", "Bruce Wayne", "Batman"]

# puts superheroes["Clark Kent"]

# superheroes["Barry Allen"] = "Flash"

# # DESIDE WHAT TO DISPLAY IF THE CALL A KEY THAT DOESNT EXIST
# samp_hash = Hash.new("No Such Key")
# puts samp_hash["Dog"]
# samp_hash["Worker"] = "Driver"
# p samp_hash

# superheroines = Hash['Lisa Morel', "Aquagirl", "Betty Kane", "Batgirl"]

# # UPDATE WILL REMOVE DUPLICATES FROM @ HASHES (DESTRUCTIVE) , MERGE WILL COMBINE 2 HASHES  (NON-DESTRUCTIVE)
# superheroes.update(superheroines)

# superheroes.each do |key, value|
#   puts key.to_s + " : " + value
# end

# puts "Has Key Lisa Morel : " + superheroes.has_key?("Lisa Morel").to_s
# puts "Has Value Batman : " + superheroes.has_value?("Batman").to_s
# puts "Is  Hash Empty : " + superheroes.empty?.to_s
# puts "Size of Hash : " + superheroes.size.to_s

# superheroes.delete("Barry Allen")

# # ENUMS
# class Menu
#   include Enumerable

#   def each
#     yield "pizza"
#     yield "speghetti"
#     yield "salad"
#     yield "water"
#     yield "bread"
#   end
# end

# menu_options = Menu.new

# menu_options.each do |option|
#   puts option
# end

# p menu_options.find{|item| item = "pizza"}

# # get items matching conditions
# p menu_options.select {|item| item.size <= 5}
# # get items not matching conditional
# p menu_options.reject {|item| item.size <= 5}
# # get first item
# p menu_options.first
# # specify how many to get
# p menu_options.take(2)
# # select everything but the first # of items defined, NOTE does not effect original enum
# p menu_options.drop(2)
# # get min item
# p menu_options.min # based on charset
# # get max item
# p menu_options.max # absed on charset
# # sort
# p menu_options.sort
# # reverse sort
# menu_options.reverse_each {|item| puts item}

# FILE OPTIONS

file = File.new("authors.out", "w")

file.puts "William Shakespeare"
file.puts "Margeret Weis"
file.puts "Tracy Hickman"

file.close

puts File.read("authors.out")

# APPEND TO A FILE
file = File.new("authors.out", "a")
file.puts "Robert Frost"
file.close
puts File.read("authors.out")

file = File.new("authors_info.out", "w")

file.puts "William Shakespeare, English, plays and poetry, 4 billion"
file.puts "Agatha Christy, English, who done its, 4 billion"
file.puts "Barbara Cartland, English, romance novels, 1 billion"
file.puts "Daniel Steel, English, romance novels, 800 million"

file.close

File.open('authors_info.out') do |record|
  record.each do |item|
    name, lang, specialty, sales = item.chomp.split(',')
    puts "#{name} was a #{lang} author that specialized in #{specialty}. They sold over #{sales} books"
  end
end

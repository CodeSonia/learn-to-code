puts("What is your name?")
name = gets

if name.include?("r")
    puts("Hi #{name} - you sound like a pretty cool person")
else
    puts("Hi nerd")
end

=begin output 
    What is your name?
Sonia
Hi nerd
sonia.hussain@GDS9327 lesson-2-ruby % ruby conditionals.rb 
What is your name?
richard
Hi richard
 - you should like a pretty cool person

    
end
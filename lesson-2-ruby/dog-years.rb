def calculate_human_dog_years(age)
    return age * 7
end

puts("Enter your dog age in human years: ")
dog_age_human_years_string = gets
dog_age_human_years_converted = dog_age_human_years_string.to_i

age_dog_years = calculate_human_dog_years(dog_age_human_years_converted)
puts("Your dog's age in human years is: #{age_dog_years}")

=begin OUTPUT
Enter your dog age in human years: 
7
Your dog's age in human years is: 49

age = 7
expected output = 49

age = 2
expected output = 14
=end

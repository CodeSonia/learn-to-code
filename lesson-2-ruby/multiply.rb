=begin
puts("Let's muliply 2 numbers...")
puts("Enter your first number: ")
first_num_string = gets

#convert the string to a number using to_i method
first_num_converted = first_num_string.to_i

puts("Enter your second number: ")
second_num_string = gets

#converts the second number
second_num_converted = second_num_string.to_i

multiplication_answer = first_num_converted * second_num_converted
puts("Your multiplied answer is: #{multiplication_answer}")
#puts("#{first_num_string} x #{second_num_string} is #{multiplication_answer}")

=begin OUTPUT

Let's muliply 2 numbers...
Enter your first number: 
2
Enter your second number: 
2
Your multiplied answer is: 4

=end
loop do
    puts("Let's multiply 2 numbers")
    puts("Enter your first number: ")
    x_string = gets
    x_num = x_string.to_i
    puts("Enter your secondnumber: ")
    y_string = gets
    y_num = y_string.to_i
    multiplcation_y_x = y_num * x_num
    puts("Your multiplication answer is: #{multiplcation_y_x}")
end

=begin output for loop

Let's multiply 2 numbers
Enter your first number: 
2
Enter your secondnumber: 
2
Your multiplication answer is: 4
Let's multiply 2 numbers
Enter your first number: 
2
Enter your secondnumber: 
2
Your multiplication answer is: 4
Let's multiply 2 numbers
Enter your first number: 
4
Enter your secondnumber: 
6
Your multiplication answer is: 24
Let's multiply 2 numbers
Enter your first number: 

    
=end
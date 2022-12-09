#score = 0;
#loop that happens 4 times
loop do
    num1 = rand(1..12)
    num2 = rand(1..12)
    
    puts("What is #{num1} multiplied by #{num2}?")
    user_answer = gets
    user_answer_num = user_answer.to_i
    
    correct_answer= num1 * num2
    if user_answer_num == correct_answer
        puts("Well done! You got it correct!!")
    else 
        puts("Uh oh... you got it wrong :(")
        puts("The correct answer was #{correct_answer}")
    end
    
end
# code block between do and end
# parameters aftr the do wrapped in vertical pipes |i|

5.times do |i|
    puts("#{10 - i} green bottles, hanging on the wall,")
    puts("#{10 - i} green bottles, hanging on the wall,")
    puts("And if one green bottle should accidentally fall,")
    puts("There'll be #{9 - i} green bottles handing on the wall.")
    puts
end
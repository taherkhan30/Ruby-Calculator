
puts "what calculator would you like to use?
      a Basic,
      b Advanced,
      c BMI
      d Trip calculator"

user_input = gets.chomp

if user_input == "basic"

  puts "you have chosen #{user_input}"

  puts "num1"

  num1 = gets.chomp

  puts "num2"

  num2 = gets.chomp

   puts "plus, minus, divide, multiply"

   ops = gets.chomp

   if ops == "plus"
    add = num1.to_f + num2.to_f
    puts add
   elsif  ops == "minus"
    minus = num1.to_f - num2.to_f
    puts minus
  elsif  ops == "divide"
    divide = num1.to_f / num2.to_f
    puts divide
  elsif  ops == "multiply"
    multiply = num1.to_f * num2.to_f
    puts multiply
  end

elsif user_input == "advanced"

  puts "you have chosen #{user_input}"

  puts "a - Find power of number
        b - Square Root a Number "
  user_input = gets.chomp

  if user_input == "a"

    puts "enter first num "

    first_num = gets.chomp

     puts "enter second num "

    second_num = gets.chomp

    powers = first_num.to_i ** second_num.to_i

    puts "the results #{powers}"

  elsif user_input == "b"

    puts "which number do you want to square?"

    user_input = gets.chomp

    square_num = user_input.to_f

    square_num_result = Math.sqrt(square_num)
    puts square_num_result


  end

elsif user_input == "BMI"

  puts "what is your weight? "

  weight = gets.chomp

  puts "what is your height?"

  height = gets.chomp

  height_converted = height.to_f

  height_squared = Math.sqrt(height_converted)

  bmi = weight.to_f / height_squared

  puts bmi

else

    puts "bad input"

end

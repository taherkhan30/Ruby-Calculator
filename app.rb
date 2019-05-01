


puts "what calculator would you like to use?
        a basic,
        b advanced,
        c BMI
        d trip calculator"

  user_input = gets.chomp

  if user_input == "basic"

    puts "you have chosen #{user_input}"

    puts "num1"

    num1 = gets.chomp.to_f

    puts "plus, minus, divide, multiply"

    ops = gets.chomp

    puts "num2"

    num2 = gets.chomp.to_f


     if ops == "+"
      add = num1 + num2
      puts add
    elsif  ops == "-"
      minus = num1 - num2
      puts minus
    elsif  ops == "/"
      divide = num1 / num2
      puts divide
    elsif  ops == "*"
      multiply = num1 * num2
      puts multiply
    else
      puts "invalid operator"
    end
  #Advanced calculator
  elsif user_input == "advanced"

    puts "you have chosen #{user_input}"

    puts "a - Find power of number
          b - Square Root a Number "
    user_input = gets.chomp

    if user_input == "a"

      puts "enter first number "

      first_num = gets.chomp.to_f

       puts "enter second number "

      second_num = gets.chomp.to_f

      powers = first_num ** second_num

      puts "the results #{powers}"

    elsif user_input == "b"

      puts "which number do you want to square?"

      user_input = gets.chomp.to_f

      square_num = user_input

      square_num_result = Math.sqrt(square_num)
      puts square_num_result


    end
  #BMI calculator
  elsif user_input == "BMI"

    puts "metric or imperial measurements"

    measure = gets.chomp

    if measure == "metric"

      puts "what is your weight (kg)? "
      weight = gets.chomp.to_f
      puts "what is your height (in meters)?"
      height = gets.chomp.to_f
      bmi = weight / (height**2)

      puts "you Body Mass Index is #{bmi}"

        if bmi < 18.5
            puts "you are underweight"

        elsif bmi >= 18.5 and bmi < 24.9
            puts "you are at a normal weight"

        elsif bmi >= 24.9 and bmi < 30
            print "you are overweight"

        elsif ( bmi >=30)
            print("you are suffering from Obesity")
        end
    elsif measure == "imperial"
      puts "Enter your weight in stones"
       i_weight = gets.chomp
        kg_converted = i_weight.to_f * 6.35
        puts kg_converted
        puts "Enter your height in inches"
        i_height = gets.chomp
        t_height = i_height.to_f * 0.304
        puts t_height
        bmi = kg_converted / t_height / t_height
        puts "Your BMI is #{bmi}"

    end

  else
        puts "Wrong Input, Re-Enter Choice"
      end

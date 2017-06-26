puts "How many employees will be processed?"
employees_processed = gets.chomp.to_i
counter = 0
until employees_processed == counter

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year where you born?"
  birth_year = gets.chomp.to_i
  age_based_on_birth_year = (2017 - birth_year)
    if age == age_based_on_birth_year
      correct_age = true
    else
      correct_age = false
    end

  garlic_input = false
  until garlic_input
    puts "Our company cafeteria is know for its   amazing garlic bread.  Should we order you  some? (yes/no)"
      garlic_bread_preferance = gets.chomp
        if garlic_bread_preferance == "yes"
          likes_garlic = true
          garlic_input = true
        elsif garlic_bread_preferance == "no"
          likes_garlic = false
          garlic_input = true
        else
          puts "Not valid answer, please answer   yes or no."
        end
  end

  healthcare_input = false
  until healthcare_input
    puts "Would you like to enroll in our   company's health care plan? (yes/no)"
    healthcare_preferance = gets.chomp
      if healthcare_preferance == "yes"
        needs_healthcare = true
        healthcare_input = true
      elsif healthcare_preferance == "no"
        needs_healthcare = false
        healthcare_input = true
      else
        puts "Not valid answer, please answer yes   or no."
      end
  end

  valid_input = false
  until valid_input
    if
      name == "Drake Cula" || name == "Tu Fang" ||  name == "drake cula" || name == "tu fang"
      puts "Defiantly a vampire"
      puts ""
      valid_input = true
    elsif
        correct_age && (likes_garlic || needs_healthcare)
      puts "Probably not a vampire."
      puts ""
      valid_input = true
    elsif
      correct_age == false && likes_garlic == false  && needs_healthcare == false
      puts "Defiantly a vampire."
      puts ""
      valid_input = true
    elsif
      (correct_age == false) && (likes_garlic ==  false || needs_healthcare == false)
      puts "Probably a vampire."
      puts ""
      valid_input = true
    else
      puts "Results inclusive"
      puts ""
      valid_input = true
    end
  end
  counter += 1
end
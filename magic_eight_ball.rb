
# Easter Eggs: Type 'add_answers' to add adition awswers. Type 'print_answers' to see all answers. 

# TODO: add happy mode easter egg
# TODO: add ruby gems for color ?

@answers = ['It is certain', 'It is decidedly so', 'Without a doubt',
          'Yes, definitely', 'ou may rely on it', 'As I see it, yes',
          'Most likely', 'Outlook good', 'Yes', 'Signs point to yes',
          'Reply hazy try again','Ask again later', 'Better not tell you now',
          'Cannot predict now', 'Concentrate and ask again', 'Do not count on it', 
          'My reply is no', 'Outlook not so good', 'Very doubtful' ]


def user_input
  puts "Enter a question for Magic Eight Ball or type QUIT"
  input = gets.strip.downcase

  case input
    when  'quit'
      puts "Thanks for playing."
    when 'print_answers'
        print_answers(@answers)
    when 'add_answers'
      puts 'How many answers to you want to add?'
      number_of_answers = gets.strip.to_i
      add_answers(number_of_answers)
    else
      give_answer(@answers)
      user_input
  end
end

def give_answer(answer_array)
  puts answer_array.sample
end

def print_answers(answer_array)
  answer_array.each do |answer|
    puts answer
  end
  user_input
end

def add_answers(number_to_add)
    @num = 0
    while @num < number_to_add
      puts "Enter an answer:"
      @answers << gets
      @num +=1
    end
  puts "Questions added"
  user_input
end

user_input


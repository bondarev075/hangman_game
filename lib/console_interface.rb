require 'colorize'

class ConsoleInterface
  FIGURES =
      Dir[__dir__ + '/../data/figures/*.txt'].
      sort.
      map { |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def print_out
    puts "Слово: #{word_to_show}".blue
    puts figure.yellow
    puts "Ошибки (#{@game.errors_made}): #{errors_to_show}".colorize(:red)
    puts "У вас осталось ошибок: #{@game.errors_allowed}\n".colorize(:blue)

    if @game.won?
      puts "Поздравляем, вы выиграли!".white.on_green
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{@game.word}".white.on_red
    end
  end

  def figure
    return FIGURES[@game.errors_made]
  end

  def word_to_show
    result =
      @game.letters_to_guess.map do |letter|
        if letter == nil
          "__"
        else
          letter
        end
      end

    return result.join(' ')
  end

  def errors_to_show
    return @game.errors.join(', ')
  end

  def get_input
    print "Введите следующую букву: "
    letter = gets[0].upcase
    return letter
  end
end
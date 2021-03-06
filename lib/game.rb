class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @user_guesses = []
  end

  def errors
    return @user_guesses - normalized_letters
  end

  def letters_to_guess
    result =
      @letters.map do |letter|
        letter if @user_guesses.include?(normalize_letter(letter))
      end

    return result
  end

  def play!(letter)
    if !over? && !@user_guesses.include?(normalize_letter(letter))
      @user_guesses << normalize_letter(letter)
    end
  end

  def won?
    return (normalized_letters - @user_guesses).empty?
  end

  def normalize_letter(letter)
    case letter
    when 'Ё'
      return 'Е'
    when 'Й'
      return 'И'
    end

    return letter
  end

  def normalized_letters
    return @letters.map {|letter| normalize_letter(letter)}
  end

  def word
    return @letters.join
  end

  def lost?
    return errors_allowed == 0
  end

  def over?
    return won? || lost?
  end

  def errors_made
    return errors.length
  end

  def errors_allowed
    return TOTAL_ERRORS_ALLOWED - errors_made
  end
end

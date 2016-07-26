class WheelOfFortune
  attr_reader :guesses, :theme

  def initialize(game_hash)
      @theme = game_hash[:theme]
      @phrase = game_hash[:phrase]
      @guesses = []
    if @phrase
      @answer_array = @phrase.gsub(/\w/, '_').chars
      @letters_to_guess = @phrase.gsub(/\s/, '').length
    end
  end

  def to_s
    @answer_array.join
  end

   def can_i_have?(input)
      lowercase_input = input.downcase 
      lowercase_phrase = @phrase.downcase
      guesses.push(input)
    if lowercase_phrase.include? lowercase_input
      return true
    else 
      return false
  end
end

  def game_over?
    if guesses == phrase 
      return true
    end
    else 
    return false
  end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end

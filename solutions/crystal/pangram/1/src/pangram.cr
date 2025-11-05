class Pangram
  def self.pangram?(input : String) : Bool
    
    # Write your code for the 'Panagram' exercise in this file.

    sentence = input.downcase

    letters = sentence.chars.select { |char| ('a'..'z').includes?(char) }

    unique_letters = letters.to_set

    unique_letters.size == 26
    
  end
end

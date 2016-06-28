class PigLatinizer
  
  def piglatinize(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    if vowels.include?(word[0].downcase)
      "#{word}way"
    else 
      word = word.split("")  
      check_first_letter(word)
    end 
  end

  def check_first_letter(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    loop do 
      if vowels.include?(word[0].downcase)==false 
           word << word.first
           word.delete_at(0)
      else 
        word << "ay"
        return word.join("") 
      end  
    end 
  end 

  def to_pig_latin(words)
    words.split(" ").map {|word| self.piglatinize(word)}.join(" ")
  end 

end 


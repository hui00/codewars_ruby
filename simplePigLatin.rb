# frozen_string_literal: true

# Move the first letter of each word to the end of it, then add
# "ay" to the end of the word. Leave punctuation marks untouched.
def pig_it text
  string = text.split(" ")
  newstring = ""
  string.each do |word|
    if (word == "?")
      word << " "
      newstring = newstring + word
    end

    word << word[0]
    word << "ay"
    word.delete_prefix!(word[0])
    word << " "
    newstring = newstring + word

  end
  puts newstring.rstrip
end

# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
pig_it('This is my string ?') #'hisTay siay ymay tringsay');

# def pig_it text
#   text.gsub(/(\w)(\w+)*/, '\2\1ay')
# end
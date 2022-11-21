# frozen_string_literal: true

# In this kata you are required to, given a string, replace every letter with
# its position in the alphabet.

def alphabet_position(text)
  if text.match?(/[A-Z]/i)
    return text.split("")

  end

  "no"
end

puts alphabet_position('a Hlooea adf a.')

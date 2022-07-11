# Create a dictionary by placing a list of key/value pairs between braces,
# with either a comma or the sequence => between the key and the value.

MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' ',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}.freeze

# Create a method to decode a Morse code character, takes a string parameter,
# and return the corresponding character in uppercase
# (e.g. decode_char(".-") returns "A").
def decode_char(char)
  MORSE_CODE[char].capitalize
end

# x = '.-'
# puts decode_char(x)

# split sentence in worlds
def split_phrase(phrase)
  if phrase.is_a? String
    phrase.split('   ')
  else
    put 'Your input should be a string in double or single quote !'
  end
end

# Decode world function
def decode_word(word)
  if word.is_a? String
    word_decode = ''
    word.split.each do |morse|
      dc = decode_char(morse)
      word_decode += dc.to_s
    end
  end
  word_decode
end

# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.

def decode(phrase)
  words = split_phrase(phrase)
  phrase_decode = ''
  words.each do |word|
    word_decode = decode_word(word)
    phrase_decode += "#{word_decode} "
  end
  phrase_decode.strip
end

# Testing
p decode_char('.-') #=> A
p decode_word('-- -.--') # => MY
p decode('-- -.--   -. .- -- .') # => MY NAME
phrase = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
p decode(phrase) # => A BOX FULL OF RUBIES

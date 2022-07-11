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

# split sentence in worlds
def split_world(phrase)
  if phrase.is_a? String
    phrase.split('   ')
  else
    put 'Your inpu should be a string in double or single quote !'
  end
end

# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.

def decode(phrase)
  worlds = split_world(phrase)
  phrase_decode = ''
  worlds.each do |world|
    world_decode = ''
    world.chars.each do |morse|
      dc = decode_char(morse)
      world_decode += dc.to_s
    end
    phrase_decode += "#{world_decode} "
  end
  phrase_decode
end

# Testing
decode('-- -.--   -. .- -- .')

# => MY NAME
PHRASE = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'.freeze
print decode(PHRASE) # => A BOX FULL OF RUBIES


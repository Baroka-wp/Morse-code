# Create a method to decode a Morse code character,
# takes a string parameter, and return the corresponding character
def decode_char(char)
  morse_code = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-': 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.-- ' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z'
  }
  morse_code[char]
end

# split sentence in worlds
def split_world(phrase)
  if phrase.is_a? String
    phrase.split('   ')
  else
    put "Your inpu should be a string in double or single quote !"
  end
end

# Create a method to decode an entire word in Morse code,
# takes a string parameter, and return the string representation.

def decode(phrase)
  worlds = split_world (phrase)
  phrase_decode = ''
  worlds.each do |world|
    world_decode = ''
    world.split(' ').each do |morse|
      world_decode += decode_char(morse)
    end
    phrase_decode += world_decode + ' '
  end
  phrase_decode
end

# Testing
decode("-- -.--   -. .- -- .")
# => MY NAME
phrase_2 = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
print decode(phrase_2) # => A BOX FULL OF RUBIES

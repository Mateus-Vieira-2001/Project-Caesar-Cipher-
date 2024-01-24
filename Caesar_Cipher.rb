def convert(word, grau)
  alphabet = ('a'..'z').to_a
  alphabet << ' '
  # I add a space in the aphabet to facility the read
  array = []
  posicao = 0
  word.each_char do |letter|
    alphabet.select do |letra_base|
      next unless letter.upcase == letra_base.upcase

      posicao = alphabet.index(letra_base).to_i + grau.to_i
      array << if letter == ' '
                 letter
               elsif posicao > 26
                 alphabet[posicao - 26]
               else
                 alphabet[posicao]

               end
    end
  end
  array.join
end
puts 'Digite uma palavra ou frase'
word_type = gets.chomp.upcase
puts 'Digite o grau de criptografia'
grau_type = gets.chomp.upcase
puts convert(word_type, grau_type)

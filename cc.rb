def caesar_cipher(string, key)
  string
    .split("")
    .map do |char|
      ascii = char.ord
      if ascii.between?(97, 122)
        (((ascii - 97 + key) % 26) + 97).chr
      elsif ascii.between?(65, 90)
        (((ascii - 65 + key) % 26) + 65).chr
      else
        char
      end
    end.join("")
end

p caesar_cipher("What a string!", 5)
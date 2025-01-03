def substring(words, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |item, hash|
    matches = words.downcase.scan(item)
    hash[item] += matches.size if matches.any?
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substring("Howdy partner, sit down! How's it going?", dictionary)
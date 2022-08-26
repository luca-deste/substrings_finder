def substringsFinder(string, dictionary)
  result = {}
  strArray = string.downcase.split(' ')
  strArray.each do |word|
    dictionary.each do |substinrg|
      p word.include?(substinrg) && result.key?(substinrg)
      if word.include?(substinrg) && result.key?(substinrg)
        result[substinrg] = result[substinrg] + 1
      elsif word.include?(substinrg)
        result[substinrg] = 1
      end
    end
  end
  p result
end

  


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substringsFinder("Howdy partner, sit down! How's it going?", dictionary)
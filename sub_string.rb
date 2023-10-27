def substrings(text, dictionary)
    result = Hash.new(0)
    lowered = text.downcase
    
    dictionary.each do |word|
        matches = lowered.scan(word).length
        result[word] = matches unless matches == 0
    end      
    puts result
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)


    #scan string for matching chars'
    #print matching char's with number of times they occur 
def substrings()
    puts "Enter Text:"
    lowered = gets.chomp.to_s
    lowered = lowered.downcase.gsub(/[^a-z0-9\s]/i, '')
    result = Hash.new(0)
    
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    dictionary.each do |word|
        matches = lowered.scan(word).length
        result[word] = matches unless matches == 0
    end      
    puts result
end

substrings()


    #scan string for matching chars'
    #print matching char's with number of times they occur 
def substring(string, dictionary)
    # Name new variables
    total_substrings_array = []
    each_substring_sum = 0
    final_hash = {}

    # Loop through dictionary
    dictionary.each do |word|
        total_substrings_array = string.scan(/#{word}/i)
        if (total_substrings_array != [])
                total_substrings_array.each do |count|
                    each_substring_sum += 1
                end
            final_hash["#{word}"] = each_substring_sum
            each_substring_sum = 0
        end
    end

    #return hash
    p final_hash
end

substring("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])



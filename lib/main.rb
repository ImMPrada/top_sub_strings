def substrings(text, dictionary)
  matches = Hash.new(0)

  dictionary.each do |key|
    matches_count = text.scan(/(#{key})/i).size

    matches[key] += matches_count if matches_count.positive?
  end

  matches
end

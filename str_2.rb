def top_words(text)
  word_counts = {}

  text = text.gsub(/[^a-zA-Z'|]/, ' ')
  text.downcase.split(' ').each do |word|
    word_counts.has_key?(word) ? word_counts[word] += 1 : word_counts[word] = 1
  end

  words = word_counts.sort_by{|word, count| -count}.first(3)
  words.map{|word, count| word}
end

text = File.open("text.txt","r").read
puts top_words(text)
class String
  def sentences
    gsub(/\n|\r/, ' ').split(/\.\s*/)
  end
end

p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences

class String
  def words
    scan(/\w[\w\'\-]*/)
  end
end

p "This is a test of words' capabilities".words

p %q{Hello. This is a test of
basic sentence splitting. It
even works over multiple lines}.sentences[1].words[3]

hot_words = %w{test ruby}
my_string = "This is a test. Dull sentence here. Ruby is great. So is cake."
c = my_string.sentences.find_all do |s| 
  s.downcase.words.any? { |word| hot_words.include?(word) }
end

p c
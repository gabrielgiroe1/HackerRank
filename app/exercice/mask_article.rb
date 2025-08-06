require "byebug"

def strike(word)
  "<strike>#{word}</strike>"
end

def mask_article(text, words)
  words.each do |word|
    text = text.gsub(/\b#{Regexp.escape(word)}\b/, strike(word))
  end
  text
end

puts mask_article("Hello World! This is crap!", [ "crap" ]).inspect

require "byebug"
def longest_streak(s)
  max_streak = 0
  current_streak = 1
  value = s[0]
  return [ "", 0 ] if s.empty?

  s.each_char.with_index do |char, index|
    if index < s.length - 1 && char == s[index + 1]
      # byebug
      current_streak += 1
    else
      if max_streak < current_streak
        max_streak = current_streak
        value  = char
      end
      current_streak = 1

    end
  end
  [ value, max_streak ]
end

def balanced_brackets?(string)
  stack = []
  string.each_char do |char|
    case char
    when '(', '[',  '{'
      stack << char
    when ')', ']',  '}'
      return false if stack.empty?
      top = stack.pop

      if top == '[' && char != ']' ||
        top == '{' && char != '}' ||
        top == '(' && char != ')'
        return false
      end
    end
  end
  return stack.empty?
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true

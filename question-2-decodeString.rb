#Given an encoded string, return its corresponding decoded string. 

#The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is repeated exactly k times. Note: k is guaranteed to be a positive integer. 

#For s = "4[ab]", the output should be decodeString(s) = "abababab" 
#For s = "2[b3[a]]", the output should be decodeString(s) = "baaabaaa"

def decodeString(s)

new_array = []
i = 0
s = s.split("")
no_brackets = []

  s.length.times do

    if s[i] == "0" || s[i] == "1" || s[i] == "2" || s[i] == "3" || s[i] == "4" || s[i] == "5" || s[i] == "6" || s[i] == "7" || s[i] == "8" || s[i] == "9" 
      new_array << s[i].to_i
    elsif 
      new_array << s[i]
    end
    i += 1
  end

j = 0

new_array.length.times do 
  if new_array[j] == "[" || new_array[j] == "]"
  else
    no_brackets << new_array[j]
  end
  j += 1
end

final_array = []
length = no_brackets.length

length.times do

  if no_brackets[length -1 ] === 'a' || no_brackets[length -1 ] === 'b' || no_brackets[length -1 ] === 'c' || no_brackets[length -1 ] === 'd' || no_brackets[length -1 ] === 'e' || no_brackets[length -1 ] === 'f' || no_brackets[length -1 ] === 'g' || no_brackets[length -1 ] === 'h' || no_brackets[length -1 ] === 'i' || no_brackets[length -1 ] === 'j' || no_brackets[length -1 ] === 'k' || no_brackets[length -1 ] === 'l' || no_brackets[length -1 ] === 'm' || no_brackets[length -1 ] === 'n' || no_brackets[length -1 ] === 'o' || no_brackets[length -1 ] === 'p' || no_brackets[length -1 ] === 'q' || no_brackets[length -1 ] === 'r' || no_brackets[length -1 ] === 's' || no_brackets[length -1 ] === 't' || no_brackets[length -1 ] === 'u' || no_brackets[length -1 ] === 'v' || no_brackets[length -1 ] === 'w' || no_brackets[length -1 ] === 'x' || no_brackets[length -1 ] === 'y' || no_brackets[length -1 ] === 'z' || no_brackets[length -1 ] === 'A' || no_brackets[length -1 ] === 'B' || no_brackets[length -1 ] === 'C' || no_brackets[length -1 ] === 'D' || no_brackets[length -1 ] === 'E' || no_brackets[length -1 ] === 'F' || no_brackets[length -1 ] === 'G' || no_brackets[length -1 ] === 'H' || no_brackets[length -1 ] === 'I' || no_brackets[length -1 ] === 'J' || no_brackets[length -1 ] === 'L' || no_brackets[length -1 ] === 'M' || no_brackets[length -1 ] === 'N' || no_brackets[length -1 ] === 'O' || no_brackets[length -1 ] === 'P' || no_brackets[length -1 ] === 'Q' || no_brackets[length -1 ] === 'R' || no_brackets[length -1 ] === 'S' || no_brackets[length -1 ] === 'T' || no_brackets[length -1 ] === 'U' || no_brackets[length -1 ] === 'V' || no_brackets[length -1 ] === 'W' || no_brackets[length -1 ] === 'X' || no_brackets[length -1 ] === 'Y' || no_brackets[length -1 ] === 'Z' 
    final_array << no_brackets[length - 1]

  elsif no_brackets[length - 1] === 0 || no_brackets[length - 1] === 1 || no_brackets[length - 1] === 2 || no_brackets[length - 1] === 3 || no_brackets[length - 1] === 4 || no_brackets[length - 1] === 5 || no_brackets[length - 1] === 6 || no_brackets[length - 1] === 7 ||  no_brackets[length - 1] === 8 || no_brackets[length - 1] === 9  
    final_array = final_array * no_brackets[length - 1]
  end
  length -= 1
  end

p final_array.reverse.join("")
return final_array.reverse.join("")
end

decodeString("4[ab]")
decodeString("2[b3[a]]")


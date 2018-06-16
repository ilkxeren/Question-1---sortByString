#sortByStrings(s,t): Sort the letters in the string s by the order they occur in the string t. You can assume t will not have repetitive characters. For s = "weather" and t = "therapyw", the output should be sortByString(s, t) = "theeraw". For s = "good" and t = "odg", the output should be sortByString(s, t) = "oodg".


def sortByStrings(s, t)

  i = 0
  j = 0
  new_array = []

  t.length.times do
 
    s.length.times do

      if t[i] == s[j]
        new_array << s[j]
      end
      j += 1
  end
i += 1
j = 0

 end    

p new_array.join('')
return new_array.join('')
end

sortByStrings("good", "odg")
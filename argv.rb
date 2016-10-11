ARGV.inspect
 
 
def word_pig_latin(word)

  if ("aeiou").include?(word[0])
    word + "way"
  elsif ("gl ph tr sc wh th sh sch gh qu").include?(word[0..1])
    word[2..-2] << word[0..1] << "ay"
  else
    word[1..-1] << word[0] << "ay"
   end
end 
 
 
array = []
arg_dup = ARGV.dup
arg_dup.each {|x| array << word_pig_latin(x) }

p array
require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

word = 'hello'
upword = word.upcase
erb_string = "capitalized hello is: <%= upword %>"
string_template = ERB.new(erb_string)
puts string_template.result(binding)

movies = {  "action" => "dark knight",
	        "fantasy" => "lord of the rings",
            "history" => "gladiator"
}

erb_hash = "my favorite fantasy movie is <%= movies['fantasy'] %>"
hash_template = ERB.new(erb_hash)
puts hash_template.result(binding)

multiply_template = ERB.new "The value of x multiplied by 5 is: <%= x * 5 %>"
puts multiply_template.result(binding)
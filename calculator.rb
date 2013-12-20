puts "Enter a number, an operator, and finally another number: "

num = gets
operator = gets.chomp
num2 = gets

if num.index(".") 
	number = num.split(".")
	num = number[0].to_i + number[1].to_i*10.0**(-number[1].length+1)
else
	num = num.to_i
end

if num2.index(".")
	number2 = num2.split(".")
	num2 = number2[0].to_i + number2[1].to_i*10.0**(-number2[1].length+1)
else
	num2 = num2.to_i
end

result = case operator
		 when '-'
		 	num - num2
		 when '+'
			num + num2
		 when '*'
		 	num * num2
		 when '/'
		 	num / num2
		 else
		 	"Error"
		 end

puts "Result: #{result}"

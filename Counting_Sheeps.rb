tail = []

File.open('A-large.in').each_line do |line|

	arry = line.strip
	arry = line.split('\n')

	arry.each do |i|
	   tail.push(i)
	end

end

head = tail.shift	
cases = 1

tail.each do |a|

	flag = false
	total = []
	cont = 1

	if a.to_i <= 0
		puts 'Case #' + cases.to_s + ': INSOMNIA'
		cases = cases + 1
		flag = true
	end

	while !flag

			a = a.to_i
			y = cont*a
			cont = cont + 1

			x = y.to_s.strip.split('')

			x.each do |b|

				if !total.include?(b.to_i)
					total.push(b.to_i)
					
					if total.size == 10
						puts 'Case #'+ cases.to_s + ': '+ y.to_s
						cases = cases + 1
						flag = true
					end
				end
			end	
	end
end

	





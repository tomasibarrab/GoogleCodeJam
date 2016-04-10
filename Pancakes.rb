tail = []

File.open('B-large.in').each_line do |line|

	arry = line.strip
	arry = line.split('\n')

	arry.each do |i|
	   tail.push(i)
	end

end

head = tail.shift	
flips = 0
cont = 0

tail.each do |a|

	x = a.to_s.scan('-+').count
	y = a.to_s.scan('+-').count

	x = x-y

	flips = x + (2*y)

	 splited = a.to_s.strip.split('')

	if splited.last == '-'
		flips = flips + 1
	end

	cont = cont + 1

	puts 'Case #' + cont.to_s + ': ' + flips.to_s 

end

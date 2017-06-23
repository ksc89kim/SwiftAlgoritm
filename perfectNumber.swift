func isPerfectNumber(number:Int) -> Bool {
	var sum = 0;
	for i in 1 ..< number {
		if number % i  == 0 {
			sum += i;
		}
	} 
	return ( sum == number )
}

for i in 1...1000 {
	if isPerfectNumber(number:i) {
		print("perfectNumber = \(i)")
	}
}




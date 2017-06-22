func divisor(number:Int) {
	for i in 1 ..< number {
		if number % i  == 0 {
			print("divisor \(i)");
		}
	} 
}

divisor(number:6)

func primeNumber(number:Int){
	for i in 2 ... number {
		for j in 2 ... number {
			if i == j && i % j == 0 {
				print("primeNumber \(j)");
				break;
			} else  if(i % j == 0) {
				break;
			}
		}
	}
}

primeNumber(number:1000)
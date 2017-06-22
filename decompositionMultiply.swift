//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"


func decompositionMultiply(number:Int) -> Int {
	var n = number;
	var beforeNumber=1;
	var multiplyNumber=0;
	while(n>0){
		
		let decompositionNumber = n%10;
		multiplyNumber = beforeNumber * decompositionNumber;
		beforeNumber=decompositionNumber;
		n /= 10;
	}
	return multiplyNumber;
}

var sum = 0;
for i in 10 ... 1000 {
	sum += decompositionMultiply(number:25)
}
print("sum = \(sum)")
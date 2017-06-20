//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"


func getGenerator(n:Int) -> Int{
	var generatorNumber = 0;
	var temp = n;
	while(temp>0){
		generatorNumber += temp%10; 
		temp = temp/10;
		
	}
	return generatorNumber+n;
}


var i=0;
var generatorNumbers = [Int]()
var generatorNumber = getGenerator(n:i);
while generatorNumber<5000 {
	var isFind = false;
	for temp in generatorNumbers {
		if temp == generatorNumber {
			isFind = true;
			break;
		}
	}
	if !isFind {
		generatorNumbers.append(generatorNumber);
	}
	i+=1;
	generatorNumber = getGenerator(n:i);
}
	
var sum = 0;
for j in 0..<5000 {
	var isFind = false
	for generatorNumber in generatorNumbers {
		if generatorNumber == j {
			isFind = true
			break;
		}
	} 
	if !isFind {
		sum += j;
	}
}

print("sum = \(sum)")



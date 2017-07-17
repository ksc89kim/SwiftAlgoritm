//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

func get3n1(number:Int, cycle:Int) -> Int {
	var result = 0
	if number % 2 == 0 {
		result = number / 2
	} else {
		result = number * 3 + 1
	}
	
	if result == 1 {
		return cycle+1
	}
	return get3n1(number:result,cycle:cycle+1)
}

func maxCycle(minNumber:Int, maxNumber:Int) -> Int {
	
	var maxCycle = 0
	
	for i in minNumber ... maxNumber {
	 	let cycle = get3n1(number:i,cycle:1)
		if maxCycle < cycle {
			maxCycle = cycle
		}
	}
	
	return maxCycle
}


var max = maxCycle(minNumber:100, maxNumber:200) 
print("\(max)")
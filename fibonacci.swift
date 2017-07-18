func fibonacci(n:Int) -> Int {
	if n == 0 { 
		return 0
	} else if n == 1 {
		return 1
	}
	
	return 	fibonacci(n:n-1) + fibonacci(n:n-2)
}

print("fi = \(fibonacci(n:2))")

var i=0
var value = 0
var maxValue = 53

while value  < maxValue {
	value = fibonacci(n:i)
	print("\(value)")
	i += 1
}
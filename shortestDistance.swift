var numberArray = [1,3,5,6,13,17,20]
var min = numberArray[numberArray.count-1];
var x = 0;
var y = 0;
print("min = \(min)")
for i in 0 ..< numberArray.count {
	for j in i+1 ..< numberArray.count {
		var minusValue = abs(numberArray[i]-numberArray[j]);
		if min > minusValue {
			min = minusValue;
			x = numberArray[i];
			y = numberArray[j];
			break;
		}
	}
}
print("min = \(min)")
print("x = \(x)")
print("y = \(y)")

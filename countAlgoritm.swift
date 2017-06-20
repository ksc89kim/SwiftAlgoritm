func getCountNumber(standardNumber:Int, number:Int) -> Int {
	var tempNumber = number;
	var count = 0;
	while(tempNumber > 0) {
		if tempNumber % 10 == standardNumber {
			count += 1;
		}
		tempNumber = tempNumber / 10;
	}
	return count;
}

var totalCount = 0;
for i  in 1 ..< 10000 {
	totalCount += getCountNumber(standardNumber:8, number:i);
}

print("totalCount = \(totalCount)");

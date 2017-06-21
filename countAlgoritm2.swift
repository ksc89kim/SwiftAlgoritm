var countArray = [0,0,0,0,0,0,0,0,0,0]

func countingNumber(number:Int) {
	var n = number;
	while(n>0){
		countArray[n % 10] += 1;
		n /= 10;
	}
}

countingNumber(number:10)
countingNumber(number:11)
countingNumber(number:12)
countingNumber(number:13)
countingNumber(number:14)
countingNumber(number:15)

for i in 0 ..< countArray.count {
	print("countArray \(countArray[i])")
}
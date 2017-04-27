// Selection Sort

func selectionSort(sortArray: inout [Int]){
	print(sortArray.count)
	for i in 0..<sortArray.count {
		for j in i+1..<sortArray.count {
			let beforeData = sortArray[i]
			let afterData = sortArray[j]
			if beforeData >= afterData {
				let temp = sortArray[i]
				
				sortArray[i] = sortArray[j]
				sortArray[j] = temp
			}
		}
	}
}

var array:[Int] = [5,3,2,4,1];

selectionSort(sortArray:&array)

print(array)
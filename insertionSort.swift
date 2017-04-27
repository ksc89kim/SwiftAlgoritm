// Insertion Sort

func insertionSort(sortArray: inout[Int]){
	print(sortArray.count)
	for i in 0..<sortArray.count {
		let key = sortArray[i]
		var j = i-1
		while j>=0 && key < sortArray[j] {
			let temp = sortArray[j]
			sortArray[j] = sortArray[j+1]
			sortArray[j+1] = temp
			j-=1
		}
	}
}

var array:[Int] = [5,3,2,4,1]

insertionSort(sortArray:&array)


print(array)
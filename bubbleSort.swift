// Bubble Sort

func bubbleSort(sortArray:inout [Int]) {
	for i in 0..<sortArray.count-1 {
		for j in 1..<sortArray.count-i {
			if sortArray[j-1] > sortArray[j] {
				let temp = sortArray[j-1] 
				sortArray[j-1]  = sortArray[j] 
				sortArray[j] = temp
			}
		}
	}
}

var array:[Int] = [5,3,2,4,1]

bubbleSort(sortArray:&array)


print(array)
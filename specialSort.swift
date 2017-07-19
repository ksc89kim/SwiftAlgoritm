var array = [-1, 1,3,-2,2]

func specialSort(sortArray:inout [Int]) {
	for i in 0..<sortArray.count-1 {
		for j in 1..<sortArray.count-i {
			if sortArray[j-1] > 0 &&  sortArray[j] < 0 {
				let temp = sortArray[j-1] 
				sortArray[j-1]  = sortArray[j] 
				sortArray[j] = temp
			}
			
		}
	}
}

specialSort(sortArray:&array)

print("\(array)")

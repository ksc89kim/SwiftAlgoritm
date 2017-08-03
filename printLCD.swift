//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

class DisplayNumber {
	var number:Int
	var column:[Bool]
	var row:[Bool]
	
	init(){
		self.number = 0
		self.row = [false,false,false]
		self.column = [false,false,false,false]
	}
	
	func setNumber(number:Int) {
		self.number = number
		switch(number){
			case 0:
				self.row = [true,false,true]
				self.column = [true,true,true,true]
			case 1:
				self.row = [false,false,false]
				self.column = [false,true,false,true]
			case 2:
				self.row = [true,true,true]
				self.column = [false,true,true,false]
			case 3:
				self.row = [true,true,true]
				self.column = [false,true,false,true]
			case 4:
				self.row = [false,true,false]
				self.column = [true,true,false,true]
			case 5:
				self.row = [true,true,true]
				self.column = [true,false,false,true]
			case 6:
				self.row = [true,true,true]
				self.column = [true,false,true,true]
			case 7:
				self.row = [true,false,false]
				self.column = [false,true,false,true]
			case 8:
				self.row = [true,true,true]
				self.column = [true,true,true,true]
			case 9:
				self.row = [true,true,true]
				self.column = [true,true,false,true]
			default:
				self.row = [false,false,false]
				self.column = [false,false,false,false]
		}	
	}
	
	func setCharacterNumber(linecount:Int, startIndex:Int, array: inout [[Character]]){
		if array.count < 1 {
			return
		}
		var compare = 1;
		var count = 1;
		let maxColumnCount = 2 + linecount + startIndex
		let maxRowCount = 2*linecount+3
		for i in 0 ..< maxRowCount {
			if i == 0 && self.row[0] {
				self.addCharacterNumberRow(rowIndex:i,startIndex:startIndex, maxColumnCount:maxColumnCount, array:&array)
			} else if i == ((maxRowCount-1)/2) && self.row[1] {
				self.addCharacterNumberRow(rowIndex:i,startIndex:startIndex, maxColumnCount:maxColumnCount, array:&array)
			} else if i == maxRowCount-1 && self.row[2] {
				self.addCharacterNumberRow(rowIndex:i,startIndex:startIndex, maxColumnCount:maxColumnCount, array:&array)
			} 

			if i != 0 &&  i != ((maxRowCount-1)/2) && i != maxRowCount-1 {
				self.addChracterNumberColumn(rowIndex:i, startIndex:startIndex, maxColumnCount:maxColumnCount, array:&array, compareIndex:count,compareCount:compare)				
				self.addChracterNumberColumn(rowIndex:i, startIndex:startIndex, maxColumnCount:maxColumnCount, array:&array, compareIndex:count,compareCount:compare)
				
				if count >= linecount {
					compare += 1
					count = 0
				}
				count += 1
			}
		}
	}
	
	func addCharacterNumberRow(rowIndex:Int, startIndex:Int, maxColumnCount:Int, array: inout [[Character]]){
		for j in startIndex ..< maxColumnCount {
			if j != startIndex && j != (maxColumnCount-1) {
				array[rowIndex][j] = "-"
			}
		}
	}
	
	func addChracterNumberColumn(rowIndex:Int, startIndex:Int, maxColumnCount:Int, array: inout [[Character]], compareIndex:Int, compareCount:Int){
		let firstIndex =  compareCount == 1 ? 0:2
		let lastIndex = compareCount == 1 ? 1:3
		if self.column[firstIndex] {
			array[rowIndex][startIndex] = "|"
		} 
		if self.column[lastIndex] {
			array[rowIndex][(maxColumnCount-1)] = "|"
		}
	}
}

func printLCD(linecount:Int, inputData:Int){
	var tempInputData = inputData;
	var numbers:[Int] = [Int]()
	var numberInfo:[[Character]] = [[Character]]()
	while tempInputData > 0 {
		let number = tempInputData % 10
		numbers.append(number)
		tempInputData = tempInputData / 10
	}

	let maxColumnCount = ((2 + linecount) * numbers.count)+numbers.count
	let maxRowCount = 2*linecount+3

	for i in 0 ..< maxRowCount {
		var rowCharacter:[Character] = [Character]()
		for j in 0 ..< maxColumnCount {
			rowCharacter.append(" ")
		}
		numberInfo.append(rowCharacter)
	}

	for i in 0 ..< numbers.count {
		let number = DisplayNumber()
		number.setNumber(number:numbers[numbers.count-i-1])
		number.setCharacterNumber(linecount:linecount, startIndex:(2 + linecount)*i+(1*i),array:&numberInfo)
	}

	var temp = ""
	for i in 0 ..< maxRowCount {
		for j in 0 ..< maxColumnCount {
			temp += "\(numberInfo[i][j])";

		}
		temp += "\n"
	}
	print("\(temp)")
}

printLCD(linecount:4, inputData:532892)


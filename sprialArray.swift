//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

func makeSprialArray(x:Int, y:Int) {
	var spiralArray:[[Int]] = [[Int]]()

	for i in 0 ..< y {
		var xArray = [Int]()
		for j in 0 ..< x {
			xArray.append(0)
		}
		spiralArray.append(xArray)
	}

	var count = 0;
	var arrow = 0;
	var tempX = 0;
	var tempY = 0;
	var turnX = (x-1) - count;
	var turnY = count;

	for i in 0 ..< (x*y) {

		spiralArray[tempY][tempX] = i

		if arrow == 0 { //right
			tempX += 1
		} else if arrow == 1 { //down
			tempY += 1
		} else if arrow == 2 { //left
			tempX -= 1
		} else if arrow == 3 { //up
			tempY -= 1;
		}

		if tempX == turnX && tempY == turnY {
			switch arrow {
				case 0: //right
					turnY = turnX;
					arrow = 1
				case 1: //down
					turnX = count;
					arrow = 2
				case 2: //left
					count += 1
					turnY = count
					arrow = 3
				case 3: //up
					turnX = (x-1) - count;
					arrow = 0
				default: arrow = 0
			}

		}
	}

	for i in 0 ..< y {
		var xString = ""
		for j in 0 ..< x {
			xString.append("\(spiralArray[i][j])\t")
		}
		print(xString)
	}
}

makeSprialArray(x:6, y:6)





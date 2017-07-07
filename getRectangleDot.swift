func getRectangleDot(dotArray:[[Int]]) -> [Int] {
	var isNotRetangle = false
	var dots:[Int] = [0,0]
	var vertical:Int? = nil;
	var horizontal:Int? = nil;
	
	if dotArray.count != 3 {
		isNotRetangle = true;
	}
	
	var compareX = 0;
	var compareY = 0;
	var errorCount = 0;
	
	for i in 0 ..< dotArray.count {
		if dotArray[i].count != 2 {
			isNotRetangle = true;
			break;
		}
		
		for j in i ..< dotArray.count {
			if i != j {
				var tempVertical:Int? = nil;
				var tempHorizontal:Int? = nil;
								
				if dotArray[i][0] == dotArray[j][0] {
					tempVertical = abs(dotArray[i][1] - dotArray[j][1])
				}

				if dotArray[i][1] == dotArray[j][1] {
					tempHorizontal = abs(dotArray[i][0] - dotArray[j][0])
				}
				
				if tempVertical == nil && tempHorizontal == nil {
					errorCount += 1
					if errorCount > 1 {
						isNotRetangle = true;
						break;
					}
				}
				
				if tempVertical != nil {
					compareX = dotArray[i][0]
					vertical = tempVertical
				} 
				
				if tempHorizontal != nil {
					compareY = dotArray[i][1]
					horizontal = tempHorizontal
				}
			}
		}
		
		if vertical == horizontal {
			isNotRetangle = true;
			break;
		}
		
		if isNotRetangle {
			break;
		}
	}
	
	
	for  i in 0 ..< dotArray.count {
		if dotArray[i][0] != compareX {
			dots[0] = dotArray[i][0]
		} 

		if dotArray[i][1] != compareY {
			dots[1] = dotArray[i][1]
		}
	}
	
	if isNotRetangle {
		print("isNotRetangle")
		dots  = [];
		return dots
	}
	
	return dots;
}



let resultDot = getRectangleDot(dotArray:[[160,100], [50,100], [160,60]]);
print("resultDot \(resultDot)")
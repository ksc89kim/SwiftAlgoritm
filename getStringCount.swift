var content:String = "aaabbcccccca"
var charCountArray:[Character:Int]? = nil

for index in 0 ..< content.characters.count {
	let charIndex = content.index(content.startIndex, offsetBy: index)
	let char = content[charIndex]
	var isNotChar = true
	if let array = charCountArray {
		for (charType, charCount) in array {
			if charType == char {
				charCountArray?[charType] = charCount + 1
				isNotChar = false
				break
			}
		}
		if isNotChar {
			charCountArray?[char] = 1
		}
	} else {
		charCountArray = [char:1]
	}
}

var resultString = ""
if let array = charCountArray {
	for (charType, charCount) in array {
		resultString += "\(charType)" + "\(charCount)"
	}
}

print(resultString)

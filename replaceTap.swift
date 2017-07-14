func replaceTap(content:String) -> String {
	var charactersArray = Array(content.characters)
	for i in 0 ..< charactersArray.count {
		if(charactersArray[i] == "\t") {
			charactersArray.insert(contentsOf:[" "," "," ", " "], at:i)
		}
	}
	return String(charactersArray)
}

var result = replaceTap(content:"qwe\tqwe")
print("\(result)")
//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

// left child-right sibling

class Tree {
	var data:String?
	var leftChild:Tree?
	var rightSibling:Tree?
	
	init(){
		self.leftChild = nil
		self.rightSibling = nil
		self.data = ""
	}
	
	init(data:String){
		self.leftChild = nil
		self.rightSibling = nil
		self.data = data
	}

	
	func appendChildNode(appendChild:Tree?){
		if let child = self.leftChild{
			var temp:Tree? = child
			while let rightSibling = temp?.rightSibling {
				temp = rightSibling
			}
			temp?.rightSibling = appendChild
		} else {
			self.leftChild = appendChild
		}
	}
	
	func printTree(depth:Int) {
		var spaceString:String = ""
		for i in 0 ..< depth {
			spaceString += " "
		}
		print(spaceString+self.data!)
		
		if let leftChild = self.leftChild {
			leftChild.printTree(depth:depth+1)
		}
		
		if let rightSibling = self.rightSibling {
			rightSibling.printTree(depth:depth)
		}
	}
}

var root:Tree? = Tree(data:"A")
var b:Tree? = Tree(data:"B")
var c:Tree? = Tree(data:"C")
var d:Tree? = Tree(data:"D")
var e:Tree? = Tree(data:"E")
var f:Tree? = Tree(data:"F")

root?.appendChildNode(appendChild:b)
b?.appendChildNode(appendChild:c)
b?.appendChildNode(appendChild:d)
root?.appendChildNode(appendChild:e)
e?.appendChildNode(appendChild:f)

root?.printTree(depth:0);
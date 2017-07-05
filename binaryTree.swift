//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

class Node {
	var data:String?
	var leftNode:Node?
	var rightNode:Node?
}


class Tree{
	var rootNode:Node?
	
	init(rootNode:Node?){
		self.rootNode = rootNode
	}
	
	func newRoot(rootNode:Node?) {
		self.rootNode = rootNode
	}
	
	func preorderPrint(leaf:Node?){
		if leaf == nil {
			return
		}
		
		print("\(leaf!.data!) ")
		self.preorderPrint(leaf:leaf?.leftNode)
		self.preorderPrint(leaf:leaf?.rightNode)
	}
	
	func inorderPrint(leaf:Node?){
		if leaf == nil {
			return
		}
		
		self.inorderPrint(leaf:leaf?.leftNode)
		print("\(leaf!.data!) ")
		self.inorderPrint(leaf:leaf?.rightNode)
	}
	
	func postoerPrint(leaf:Node?){
		if leaf == nil {
			return
		}
		
		self.postoerPrint(leaf:leaf?.leftNode)
		self.postoerPrint(leaf:leaf?.rightNode)
		print("\(leaf!.data!) ")
	}
}

var a:Node? = Node()
a?.data = "A"
var b:Node? = Node()
b?.data = "B"
var c:Node? = Node()
c?.data = "C"
var d:Node? = Node()
d?.data = "D"
var e:Node? = Node()
e?.data = "E"
var f:Node? = Node()
f?.data = "F"
var g:Node? = Node()
g?.data = "G"
var h:Node? = Node()
h?.data = "H"
var i:Node? = Node()
i?.data = "I"

var tree:Tree = Tree(rootNode:a)
a?.leftNode = b
b?.leftNode = d
d?.leftNode = h
d?.rightNode = i
b?.rightNode = e
a?.rightNode = c
c?.leftNode = f
c?.rightNode = g


print("전위 순회")
tree.preorderPrint(leaf:a)
print("중위 순회")
tree.inorderPrint(leaf:a)
print("후위 순회")
tree.postoerPrint(leaf:a)
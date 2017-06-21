func getNumberPage(totalCount:Int, pageCount:Int) -> Int {
	if pageCount < 1 {return 0;} 
	let addCount = (totalCount%pageCount==0) ? 0:1
	return (totalCount/pageCount)+addCount;
}

print("count(0,1) = \(getNumberPage(totalCount:0, pageCount:1))")
print("count(1,1) = \(getNumberPage(totalCount:1, pageCount:1))")
print("count(2,1) = \(getNumberPage(totalCount:2, pageCount:1))")
print("count(1,10) = \(getNumberPage(totalCount:1, pageCount:10))")
print("count(10,10) = \(getNumberPage(totalCount:10, pageCount:10))")
print("count(11,10) = \(getNumberPage(totalCount:11, pageCount:10))")
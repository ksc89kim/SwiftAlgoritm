//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

func sinap(content:String) {
	let names = content.characters.split{$0 == ","}.map(String.init)
	var kimCount = 0;
	var leeCount = 0;
	var leezaeyoungCount = 0
	var notOverlapNames:[String] = [String]()
	for name in names {
		if name[name.startIndex] == "김" {
			kimCount += 1
		} else if name[name.startIndex] == "이" {
			leeCount += 1
		}
		
		if name == "이재영" {
			leezaeyoungCount += 1
		}
		
		var isOverlap = false
		for compareName in notOverlapNames {
			if compareName == name {
				isOverlap = true
				break
			}
		}
		if !isOverlap {
			notOverlapNames.append(name)
		}
	}
	
	notOverlapNames.sort{ $0 < $1 }
	
	print("kimCount = \(kimCount)")
	print("leeCount = \(leeCount)")
	print("leezaeyoungCount = \(leezaeyoungCount)")
	print("notOverlapNames = \(notOverlapNames)")
}

sinap(content:"이유덕,이재영,권종표,이재영,박민호,강상희,이재영,김지완,최승혁,이성연,박영서,박민호,전경헌,송정환,김재성,이유덕,전경헌")
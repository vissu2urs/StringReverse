//: Playground - noun: a place where people can play

import UIKit

// String
let str = "Hello World"
// Reverse into characters
let reversed = String(str.reversed())
print(reversed)


func reverse(_ s: String) -> String {
    var str = ""
    for character in s{
        str = "\(character)" + str
        print ( str)
    }
    return str
}
print (reverse("Hello World"))


func reverseAString(wordToReverse: String) -> String {
var reversedWord = [Character]()
for obj in wordToReverse{
    reversedWord.insert(obj, at: 0)
}
    return String(reversedWord)
}
print(reverseAString(wordToReverse: "Hello World"))



//Swap in-place, using char array
func reverseAStringBySwap(wordToReverse: String) -> String {
    guard wordToReverse.count > 1 else {
        return wordToReverse
    }
    var newWord = [Character]()
    for word in wordToReverse{
        newWord.append(word)
    }
    let maxIndex = newWord.count - 1
    
    for i in 0...maxIndex {
        if i > maxIndex - i {
            break
        }
        (newWord[i], newWord[maxIndex - i]) = (newWord[maxIndex - i], newWord[i])
    }
    return String(newWord)
}

print(reverseAStringBySwap(wordToReverse: "Hello World"))

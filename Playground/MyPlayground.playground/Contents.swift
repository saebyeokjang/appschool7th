import UIKit

let phrase: String = "The quick brown fox jumps over the lazy dog"
let numberOfFoxes: Int = 1
let nmmberOfAnimal: Int = 2

let avarageCharactersPerWord: Float = (3+5+5+3+5+4+3+4+3) / 9
print(avarageCharactersPerWord)

var anotherPhrase: String = "The quick brown fox jumps over the lazy "
print(phrase)
print(anotherPhrase)

var phraseInfo = "The phrase" + " has: "
print(phraseInfo)

phraseInfo = phraseInfo + "\(numberOfFoxes) fox and \(nmmberOfAnimal) animals"

print("Number of characters in phrase: \(phrase.count)")
